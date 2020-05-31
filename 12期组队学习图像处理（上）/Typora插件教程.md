# VLOOK——让Typora更美观

推荐开源中国一款Typora插件工具，本次书籍就是用了这个插件，项目地址:https://gitee.com/madmaxchow/VLOOK

**特性：**

- 生成markdown封面，封底

- 更丰富的主题可供选择


**使用方法**

 【注】完成前两步就可以在typora上进行预览了

```
=================
　第1步：下载、配置
-----------------

  + 访问官方主页下载最新发布版本：https://github.com/MadMaxChow/VLOOK/releases
  + 下载并安装 Typora (https://www.typora.io) ，启动后进入「偏好设置」，启用一些建议的选项，详细如下：
    - 开启「Markdown 扩展语法」下的所有选项
    - 开启「代码块」「公式」下的所有选项


================
　第2步：应用主题
----------------
  + 将`released\theme`下所有CSS文件复制至 Typora 的主题目录（ Typora「偏好设置」中点击「外观 - 打开主题目录」定位到该目录）；
  + 重启 Typora ，点击菜单`主题`，选择以`vlook-*`形式命名的主题，即可启用对应的 VLOOK 主题样式；
  + 可基于`VLOOK\3-demo\VLOOK-Template 文档模板.md`来创建你自己的文档，`VLOOK\3-demo`目录下也有本文档的 Markdown 源文件。


================
　第3步：植入插件
----------------
　+ 在 Typora 中将 Markdown 文件导出为「HTML」文件；
　+ 打开文件「released\VLOOK-TOOLBOX 插件.txt」，全选所有内容，并复制；
　+ 用纯文件编辑器，如：记事本、Visual Studio Code (https://code.visualstudio.com/)，打开该导出的 HTML 文件；
　+ 搜索「<body 」，并将复制的内容粘贴到body标签的「>」之后，举例：

　<body ...>
　← ← ← ← ← 复制的「VLOOK-TOOLBOX 插件」内容粘贴于此！
　...
　</body>

　+ 保存，大吉大利～

** 强烈建议使用 Chrome 或 Firefox 浏览器查看HTML　**


================
　更详细的在线说明
----------------
　+ 详见：https://madmaxchow.github.io/VLOOK/index.html
　+ 详见：https://madmaxchow.github.io/VLOOK/chart.html
```

