#!/bin/bash

BOOKNAME="图像处理教程.md"
ENDCOVER='\n\n\n###### <br><br><br><br><br><br><br><br><br><br><br>'
echo "WARNING: this script is tested on macos!"

echo "内容合并..."
cat Task0[1-6]* > $BOOKNAME

echo "添加目录..."
gsed -i '1i\[TOC]' $BOOKNAME

echo "在所有一级目录前分页..."
gsed -i '/^# Datawhale.*/i <div STYLE="page-break-after: always;"></div>' $BOOKNAME

#gsed -i '1i\<div STYLE="page-break-after: always;"></div>' $BOOKNAME

#添加封面
cmd='
HEAD="""
###### <sup>DataWhale</sup><br>数字图像处理教程<br>────────<br><br>`# 版本丨V1.0 #`<br><br><br>**李芝翔 王程伟 任乔牧 张强**<br><br><br>*公众号 Datawhale*<br>*Github Datawhalechina*<br>*http://www.datawhale.club*<br>
"""
with open("./图像处理教程.md", "r+") as f:
     old = f.read()
     f.seek(0)
     f.write(HEAD)
     f.write(old)
'
python -c "$cmd"

#添加尾页
echo "$ENDCOVER" >> "$BOOKNAME"

echo "完成，到typora导出pdf即可!"
