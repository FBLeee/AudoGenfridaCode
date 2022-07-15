#!/usr/bin/python
# -*- coding: UTF-8 -*-
import sys
import os
import re
desktop_path = os.getcwd() + "\\"

# 创建一个txt文件，文件名为mytxtfile


def text_create(name):
    # 新创建的txt文件的存放路径
    full_path = desktop_path + name + '.js'  # 也可以创建一个.doc的word文档
    file = open(full_path, 'w')


def getClassName(smaliFilePath):
    with open(smaliFilePath, "r") as f:
        firstline = f.readline()
        group1 = re.search(" L.*?;", firstline).group()
        if (group1 != None):
            name = group1.strip()
            return name
    return None


def getMethods(smaliFilePath):
    methods = []
    with open(smaliFilePath, "r") as f:
        for line in f.readlines():
            if (line.find(".method ") != -1 and line.find("abstract") == -1):
                methods.append(line)
    return methods


# '.method public constructor <init>(Landroid/content/Context;)V\n'  返回<init>
def getFunctionName(methodline):
    endPos = methodline.find("(")
    tmpStr = methodline[0: endPos]
    startPos = tmpStr.rfind(" ")
    name = tmpStr[startPos + 1:]
    return name

# 获取参数类型


def getArgType(argType=""):
    chType = argType[0]
    # 标准数据类型
    standardType = ["Z", "B", "C", "S", "I", "J", "F", "D"]
    # 自定义类型
    objectType = ["L"]
    # 数组
    arrayType = ["["]
    if chType in standardType:
        return chType
    elif chType in objectType:
        endPos = argType.find(";")
        typeName = argType[0: endPos + 1]
        return typeName
    elif chType in arrayType:
        endString = argType[1:]
        typeName = "[" + getArgType(endString)
        return typeName

    return ""


def parseArgList(argTypes, pos):
    '''
        http://docs.oracle.com/javase/6/docs/technotes/guides/jni/spec/types.html#wp276
    '''
    argList = []
    while 1:
        argTypeString = argTypes[pos:]
        if (argTypeString == ""):
            break
        typeName = getArgType(argTypeString)
        if (typeName == ""):
            break
        argList.append(typeName)
        pos += len(typeName)
        nn = len(argTypes)
        if (pos >= nn):
            break

    return argList


def getArgList(methodline=""):
    argList = []
    startPos = methodline.find("(")
    endPos = methodline.find(")")
    if ((endPos - startPos) == 1):
        return argList
    # 左闭右开
    argString = methodline[startPos + 1: endPos]
    argList = parseArgList(argString, 0)
    return argList


def getReturnType(methodline):
    startPos = methodline.find(")")
    endPos = methodline.find("\n")
    returnValue = methodline[startPos + 1: endPos]
    return returnValue


# 产生头部代码
def genHeadCode():
    header = 'function hook_java() {\n\tJava.perform(function () {'
    print(header)

# 产生尾部代码


def genLastCode():
    end = '\t});\n}\n\nfunction hook_native() {\n\n}\n\nfunction main() {\n\thook_java();\n\thook_native();\n} \n\nsetImmediate(main);'
    print(end)


def genDefClass(className):
    pos = className.rfind("/")
    if (pos == -1):
        pos = className.rfind("L")
    semicolonPos = className.find(";")
    genClassName = className[pos + 1: semicolonPos]
    tmpClassName = className
    tmpClassName = tmpClassName.strip()
    if (tmpClassName[0] == "L"):
        tmpClassName = tmpClassName[1:]
    tmpClassName = tmpClassName.replace("/", ".")
    tmpClassName = tmpClassName.replace(";", "")
    print("\t\tvar " + genClassName + "Class = Java.use('" + tmpClassName + "');")
    return genClassName + "Class"


def genHookFunctionCode(genClassName, funName, hookFunctionName, argList, returnType, isOverload):
    argCode = ""
    overloadCode = ""
    LogCode = "\n"
    consoleLogReturnValue = ""
    for i in range(0, len(argList)):
        argString = argList[i]
        argString = argString.strip()
        if (argString[0] != "["):
            if (argString[0] == "L"):
                argString = argString[1:]
            #argString = argString.replace("L", "")
            argString = argString.replace("/", ".")
            argString = argString.replace(";", "")
            standardType = {"Z": "boolean", "B": "byte", "C": "char", "S": "short", "I": "int", "J": "long",
                            "F": "float", "D": "double"}
            if argString[0] in standardType:
                argString = standardType[argString]
        else:
            argString = argString.replace("/", ".")
        overloadCode += "\"" + argString + "\""
        # print("overloadCode:", overloadCode)

        aArg = "arg" + str(i)
        argCode += aArg
        if (i < len(argList) - 1):
            argCode += ", "
            overloadCode += ", "
        LogCode += "\t\t\tconsole.log('%s.%s [*] %s: ' + %s);\n" % (
            genClassName, funName, aArg, aArg)

    argCode += ""

    if returnType == "V":
        callCode = "\n\t\t\tthis.%s(%s);" % (funName, argCode)
        returnCode = ""
    else:
        callCode = "\n\t\t\tvar ret = this.%s(%s);" % (funName, argCode)
        consoleLogReturnValue = "\t\t\tconsole.log('%s.%s [*] ret: ' + ret);\n" % (
            genClassName, funName)
        returnCode = "\t\t\treturn ret;\n"
    if (overloadCode == "" or isOverload == False):
        code = "\t\t%s.%s.implementation = function (%s) { %s %s %s %s\t\t};" % (
            genClassName, funName, argCode, callCode, LogCode, consoleLogReturnValue, returnCode)
    else:
        code = "\t\t%s.%s.overload(%s).implementation = function (%s) { %s %s %s %s\t\t};" % (
            genClassName, funName, overloadCode, argCode, callCode, LogCode, consoleLogReturnValue, returnCode)
    if(hookFunctionName == funName):
        print(code)
    pass


def genHookCode(filepath, hookFunctionName):
    smaliPath = os.path.abspath(filepath)
    className = getClassName(smaliPath)
    genClassName = genDefClass(className)
    methods = getMethods(smaliPath)
    allFuntionNames = {}
    for methodline in methods:
        funName = getFunctionName(methodline)
        # 构造函数不做处理
        if funName == "<init>" or funName == "<clinit>":
            continue
        #
        if funName in allFuntionNames:
            count = allFuntionNames[funName]
            allFuntionNames[funName] = count + 1
        else:
            allFuntionNames[funName] = 1

    for methodline in methods:
        funName = getFunctionName(methodline)
        if funName == "<init>" or funName == "<clinit>":
            continue
        # print("methodline:", methodline)
        argList = getArgList(methodline)
        returnType = getReturnType(methodline)

        isOverload = False
        if allFuntionNames[funName] >= 2:
            isOverload = True
        code = genHookFunctionCode(genClassName, funName, hookFunctionName, argList,
                                   returnType, isOverload)


def main():
    filename = 'hook_audoSmail'
    text_create(filename)
    outputfile = open(
        desktop_path + filename + '.js', 'w')
    sys.stdout = outputfile
    genHeadCode()
    genHookCode(sys.argv[1], sys.argv[2])

    print(file=outputfile)
    genLastCode()

    outputfile.close()  # close后才能看到写入的数据
    # for i in range(1, len(sys.argv)):
    # 键盘输入第一个参数是需要打印的smali文件，第二个值改为需要hook的代码


if __name__ == '__main__':
    # print(len(sys.argv))
    if (len(sys.argv) == 3):
        main()
    else:
        print("python generatehookcode.py file1 file2 file3 ")
