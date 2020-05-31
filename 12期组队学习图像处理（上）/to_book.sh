#!/bin/bash
####################################
# 将项目内所有分Task合并成一本书
# 本脚本目前只在mac平台下作了测试,
# 其他平台暂不支持运行
####################################

# 判断系统
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
BOOKNAME="图像处理教程.md"
ENDCOVER='\n\n\n###### <br><br><br><br><br><br><br><br><br><br><br>'
# 添加封面内容
cmd='
HEAD="""
###### <sup>Datawhale</sup><br>数字图像处理教程<br>────────<br><br>`# 版本丨V1.0 #`<br><br><br>**王程伟 任乔牧 李芝翔 张强**<br><br><div align=center><img src="assets/icon.jpg" style="zoom:50%;" /></div><br><br>*Github Datawhalechina*<br>*http://www.datawhale.club*<br>
"""
with open("./图像处理教程.md", "r+") as f:
     old = f.read()
     f.seek(0)
     f.write(HEAD)
     f.write(old)
'


echo "your system is $machine"
echo "WARNING: this script is tested on macos!"
if [ "$machine" = "Mac" ]; then
    echo "内容合并..."
    cat Task0[1-6]* > $BOOKNAME
    
    echo "添加目录..."
    gsed -i '1i\[TOC]' $BOOKNAME
    
    echo "在所有一级目录前分页..."
    gsed -i '/^# Datawhale.*/i <div STYLE="page-break-after: always;"></div>' $BOOKNAME
    
    #添加封面
    python -c "$cmd"
    
    #添加尾页
    echo "$ENDCOVER" >> "$BOOKNAME"
    
    echo "完成，到typora导出pdf即可!"
else
    echo "Not supported now"
fi
