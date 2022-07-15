#!/usr/bin/python
# -*- coding: UTF-8 -*-
import sys
import os
import re
import string

desktop_path = os.getcwd() + "\\"


# 创建一个txt文件，文件名为mytxtfile
def text_create(name):
    # 新创建的txt文件的存放路径
    full_path = desktop_path + name + '.js'  # 也可以创建一个.doc的word文档
    file = open(full_path, 'w')


# 产生头部代码
def genHeadCode():
    header = 'function hook_java() {\n\tJava.perform(function () {'
    print(header)

# 产生尾部代码


def genLastCode():
    end = '\t});\n}\n\nfunction hook_native() {\n\n}\n\nfunction main() {\n\thook_java();\n\thook_native();\n} \n\nsetImmediate(main);'
    print(end)

# 产生js代码中需要hook的类名
# com.mosheng.chatroom.entity.binder.ChatSquareListFrameLayout.A


def genDefClass(genClassName_funName):
    pos_0 = genClassName_funName.rfind(".")
    # ClassFullName     com.mosheng.chatroom.entity.binder.ChatSquareListFrameLayout
    classFullName = genClassName_funName[0: pos_0]

    pos_1 = classFullName.rfind(".")
    genClassName = classFullName[pos_1+1:]

    print("\t\tvar " + genClassName +
          "Class = Java.use('" + classFullName + "');")
    return genClassName + "Class"


# 产生js代码中需要hook的方法名
def genDefFunction(genClassName_funName):
    pos_0 = genClassName_funName.rfind(".")
    # ClassFullName     com.mosheng.chatroom.entity.binder.ChatSquareListFrameLayout
    functionName = genClassName_funName[pos_0+1:]
    return functionName


def genHookFunctionCode(genClassName_funName, argNum, isReturn=False):
    argCode = ""
    LogCode = "\n"

    consoleLogReturnValue = ""

    genClassName = genDefClass(genClassName_funName)
    genFunctionName = genDefFunction(genClassName_funName)
    argNum = int(argNum)
    # 构造参数代码
    for i in range(0, argNum):
        aArg = "arg" + str(i)
        argCode += aArg
        if (i < argNum - 1):
            argCode += ", "
        LogCode += "\t\t\tconsole.log('%s.%s [*] %s: ' + %s);\n" % (
            genClassName, genFunctionName, aArg, aArg)
    argCode += ""

    # 构造返回值代码
    if isReturn == False or isReturn == '0':
        callCode = "\n\t\t\tthis.%s(%s);" % (genFunctionName, argCode)
        returnCode = ""
    else:
        callCode = "\n\t\t\tvar ret = this.%s(%s);" % (
            genFunctionName, argCode)
        consoleLogReturnValue = "\t\t\tconsole.log('%s.%s [*] ret: ' + ret);\n" % (
            genClassName, genFunctionName)
        returnCode = "\t\t\treturn ret;\n"
    code = "\t\t%s.%s.implementation = function (%s) { %s %s %s %s\t\t};" % (
        genClassName, genFunctionName, argCode, callCode, LogCode, consoleLogReturnValue, returnCode)
    # print(genClassName, "\r\n", genFunctionName)

    return code


def main():
    code = ""
    print("输入方法名的全名：")
    a = input()
    print("输入参数个数：")
    b = input()
    print("是否有返回值：")
    c = input()

    filename = 'hook_audo'
    text_create(filename)
    outputfile = open(
        desktop_path + filename + '.js', 'w')
    sys.stdout = outputfile
    genHeadCode()
    code = genHookFunctionCode(a, b, c)
    print(code, file=outputfile)
    genLastCode()

    outputfile.close()  # close后才能看到写入的数据


if __name__ == '__main__':
    main()
    os.system('pause')
