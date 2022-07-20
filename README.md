# AudoGenfridaCode
自动产生java层的frida hook代码


注：只针对新手写hook代码不熟练的。
本代码是学习lasting-yang代码，进行的改动，对java层多参数的函数hook，提高效率，感谢lasting-yang。



# 使用说明


## 针对 genHook.py
```
1. 利用反编译工具jadx打开apk，找到需要hook的方法名，复制类名和方法名
 

2. 运行本脚本，根据提示输入, 生成hook代码文件——————hook_audo.js
$ python genHook.py
$ 输入方法名的全名：（需要hook的类名.方法名）
$ 输入参数个数：
$ 是否有返回值：（0表示无，1表示有）



3. frida指定hook.js，运行app
$ frida -U  --no-pause -f packgename -l hook_audo.js 


```


## 针对 fridaAudoHook.py
```
lasting-yang代码是把指定smali文件中的所有方法全部生成hook代码，
此处做了一个微小改动：生成smali中【指定方法名】的hook代码

1.运行脚本，生成hook代码文件——————hook_audoSmail.js
python fridaAudoHook.py smali文件 具体方法名

示例：
python .\fridaAudoHook.py .\ChatSquareListFrameLayout.smali a

```

# Thanks
https://github.com/lasting-yang/FridaAutoHook

