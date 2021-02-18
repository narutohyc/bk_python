# Jupyter Notebook使用教程

![Jupyter Notebook介绍、安装及使用教程](https://pic3.zhimg.com/v2-637604b9f9fe566bac65ff3f44c184af_1200x500.jpg)

## 简介

[Jupyter Notebook](http://link.zhihu.com/?target=https%3A//jupyter-notebook.readthedocs.io/en/stable/notebook.html)是一个开源的Web应用程序，允许用户创建和共享包含代码、方程式、可视化和文本的文档。它的用途包括：数据清理和转换、数值模拟、统计建模、数据可视化、机器学习等等。它具有以下优势：

*   可选择语言：支持超过40种编程语言，包括Python、R、Julia、Scala等。
*   分享笔记本：可以使用电子邮件、Dropbox、GitHub和Jupyter Notebook Viewer与他人共享。
*   交互式输出：代码可以生成丰富的交互式输出，包括HTML、图像、视频、LaTeX等等。
*   大数据整合：通过Python、R、Scala编程语言使用Apache Spark等大数据框架工具。支持使用pandas、scikit-learn、ggplot2、TensorFlow来探索同一份数据。

Jupyter Notebook是基于网页的用于交互计算的应用程序。

其可被应用于全过程计算：开发、文档编写、运行代码和展示结果。

## 安装与运行

> ```cmd
> conda install jupyter notebook
> python -m pip install jupyter
> ```
>
> 运行Jupyter Notebook，首先cmd进入到自己的工作路径下，执行以下的命令
>
> ```cmd
> jupyter notebook [--port <port_number>]
> ```
>
> ![](https://pic3.zhimg.com/v2-fdca19cb6b2e631a900108d2d18195aa_b.jpg)
>
> 默认端口8888



# 编辑界面

> 一个notebook的编辑界面主要由四部分组成：名称、菜单栏、工具条以及单元(Cell)，如下图所示：
>
> ![](https://pic1.zhimg.com/v2-5bca7035e7fd4cb8c97c083766087ac4_b.jpg)

## File

> **File**中的按钮选项，具体功能如下表：
>
> ![](https://pic3.zhimg.com/v2-76227cce3591b2900de9be91fd0f2952_b.jpg)

## Edit

> **Edit**中的按钮选项如下图所示：
>
> ![](https://pic3.zhimg.com/v2-b92adc9ef1910c2691010f5d3e16c10a_b.jpg)

## View

> **View**中的按钮选项如下图所示
>
> ![](https://pic2.zhimg.com/v2-c85e3b2c911f701ddd6ebec6b47c75b1_b.jpg)
>
> View中的功能可以让用户更好的展示自己的notebook，但对编写代码、实现功能没有影响。
>
> **Insert**在当前单元上方/下方插入新的单元
>
> ![](https://pic2.zhimg.com/v2-faa8ddb9521381d5a539a68daa25dcdd_b.jpg)

## Cell

> **Cell**
>
> ![](https://pic1.zhimg.com/v2-edb4fbe0c31520ce5f71a6df487aacc8_b.jpg)
>
> ![](https://pic3.zhimg.com/v2-b969a960c54bddb734ed4145bd39e2fe_b.jpg)
>
> 按`ESC`进入无编辑状态，`ESC+Y`和`ESC+M`切换cell type

## Kernel

> **Kernel**
>
> ![](https://pic3.zhimg.com/v2-a5c5fa22bc0e255a091560ba555bced6_b.jpg)

## Help

> **Help**
>
> ![](https://pic4.zhimg.com/v2-41878b9135b65ec3491aa788daceed03_b.jpg)

# 快捷键

## 命令模式下的快捷键

![](https://pic4.zhimg.com/v2-a9968b4189aff6fc84d2141218286ca3_b.jpg)

## 编辑模式下的快捷键

![](https://pic4.zhimg.com/v2-6d9bc9bdc8c75dc4d06ae1be0cbf361b_b.jpg)



# 使用技巧

## 魔法函数

使用魔法函数可以简单的实现一些单纯python要很麻烦才能实现的功能。

> %：行魔法函数，只对本行代码生效。
>
> %%：Cell魔法函数，在整个Cell中生效，必须放于Cell首行。
>
> %lsmagic：列出所有的魔法函数
>
> %magic查看各个魔法函数的说明
>
> ?后面加上魔法函数名称，可以查看该函数的说明

一些常用魔法函数的示例：

![](https://pic3.zhimg.com/v2-e9877938d1aa3614c6d6e0e02cd3f952_b.jpg)

注意这些命令是在Python kernel中适用的，其他 kernel 不一定适用。

## md生成目录

> * 不同于有道云笔记的Markdown编译器，Jupyter Notebook无法为Markdown文档通过特定语法添加目录，因此需要通过安装扩展来实现目录的添加。
>
>   ```cmd
>   conda install -c conda-forge jupyter_contrib_nbextensions
>   ```
>
> * 执行上述命令后，启动Jupyter Notebook，你会发现导航栏多了“Nbextensions”的类目，点击“Nbextensions”，勾选“Table of Contents”
>
> ![](https://pic2.zhimg.com/v2-a7a2f4b1f06aed21df09b6e3b957e191_b.jpg)
>
> Nbextensions页面
>
> *   之后再在Jupyter Notebook中使用Markdown，点击下图的图标即可使用啦。
>
> ![](https://pic2.zhimg.com/v2-dd9b3a1f62c89570a47c7f6d24bf01a1_b.jpg)

## md链接并定位

语法格式如下：

```cmd
[添加链接的正文](#自定义索引词)
<a id=自定义索引词>跳转提示</a>
```

![](https://pic3.zhimg.com/v2-33dd1aeea782e414db9b703f75f0f32e_b.gif)



## 加载指定网页源代码

```cmd
%load URL
```

## 加载本地Python文件

```cmd
%load Python文件的绝对路径
```

运行本地Python文件

```
%run Python文件的绝对路径
!python Python文件的绝对路径
```

获取当前位置

```cmd
%pwd
```

使用shell命令

```cmd
!shell命令
```

*   在Jupyter Notebook中的笔记本单元格中用英文感叹号“!”后接shell命令即可执行shell命令。

由于目前暂时用不到过多的魔术命令，因此暂时先参考[官网的文档](http://link.zhihu.com/?target=http%3A//ipython.readthedocs.io/en/stable/interactive/magics.html)。

# 参考

> [Jupyter Notebook介绍、安装及使用教程](https://zhuanlan.zhihu.com/p/33105153 )
>
> [最详尽使用指南：超快上手Jupyter Notebook](https://zhuanlan.zhihu.com/p/32320214)



