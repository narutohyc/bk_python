# Anaconda开发环境

# Anaconda介绍

> **Anaconda是一个整合 Python的套件包，适合初学者的开发环境**

# 安装Anaconda

# Anaconda Prompt 管理套件

1. 显示已安装的套件 conda list
2. 套件安装 conda/pip install 套件名称 or easy_install 参数 套件名称
3. 更新套件 conda/pip update 套件名称 or easy_install -U 套件名称
4. 删除套件 conda/pip uninstall 套件名称 or easy_install -m 套件名称
5. 查找套件 conda search 套件名称
6. 从Anaconda.org安装套件

   如果一个包不能使用conda安装，可在Anaconda.org查找。Anaconda.org向公开和私有包仓库提供包管理服务。
   
   为了从Anaconda.org下载到当前的环境中，我们需要通过指定Anaconda.org为一个特定通道，通过输入这个包的完整路径来实现。
   
   在左上角的叫“Search Anaconda Cloud”搜索框中输入“包名”并点击search按钮。
   
   Anaconda.org上会有超过一打的bottleneck包的版本可用，但是我们想要那个被下载最频繁的版本。所以你可以通过下载量来排序，通过点击Download栏。
   
   点击包的名字来选择最常被下载的包。它会链接到Anaconda.org详情页显示下载的具体命令：

   conda install --channel https：//conda .anaconda.ort/pandas bottleneck
7. 通过pip命令来安装包

   对于那些无法通过conda安装或者从Anaconda.org获得的包，我们通常可以用pip（“pip install packages”的简称）来安装包。
   
   提示：pip甚至不能升级python，因为它不像conda一样把python当做包来处理。但是它可以安装一些conda安装不了的包。

# 使用Anaconda Prompt 建立虚拟环境

1. 适合于测试套件或执行Python 2.x环境的程序

2. conda create -n 虚拟环境名称 python=版本 anaconda ，虚拟环境名称为自己命名，版本为2*或3*

   “anaconda”是相当于完全创建一个完整的anaconda环境（包含所有anaconda默认的科学计算等一系列的包）
   
   可以添加后缀 “anaconda”或者“biopython”可以创建一个基本科学计算功能完备的环境
   
   创建并命名一个新环境，然后安装另一个版本的python以及两个包 Astroid 和 Babel。
   
   conda create -n bunnies python=3 Astroid Babel
   
   这将创建第二个基于python3 和Astroid and Babel 的新环境，在/envs/bunnies文件夹里。
   
3. 虚拟环境会在Anconda安装目录的envs底下，用conda info -e查询路径
   确认当前环境: conda info -envis
4. 切换虚拟环境 activate 虚拟环境名称
   Linux，OS X: source activate snowflakes
   Windows：activate snowflakes
5. 关闭虚拟环境回原来环境 deactivate
   Linux，OS X: source deactivate
   Windows: deactivate

# 使用Anaconda Prompt 复制虚拟环境

1. conda create -n 虚拟环境名称 --clone root
   通过克隆来复制一个环境。这儿将通过克隆snowfllakes来创建一个称为flowers的副本。
   conda create -n flowers --clone snowflakes
2. 查看目前所有的虚拟环境名称 conda info -e
3. 移除虚拟环境 conda remove -n 虚拟环境名称 --all
   如果你不想要这个名为flowers的环境，就按照如下方法移除该环境：
   conda remove -n flowers --all
   为了确定这个名为flowers的环境已经被移除，输入以下命令：

   conda info -e
   flowers 已经不再在你的环境列表里了，所以我们知道它被删除了。

* IPython 交谈式命令窗口
  1. cmd中python模式的加强版
  2. 观看先前输入的程序代码 history
  3. 查询使用说明 ?加在命令后面
  4. 简易智能输入
  5. 执行python档案 %run 档案路径

# 更新conda本身

conda update conda

conda将会比较新旧版本并且告诉你哪一个版本的conda可以被安装。它也会通知你伴随这次升级其它包同时升级的情况。
如果新版本的conda可用，它会提示你输入y进行升级. 

proceed ([y]/n)? y

# 更新anaconda 应用

conda update anaconda

# 更新python

假设当前python环境是3.6.1，而最新版本是3.6.2，那么就会升级到3.6.2

conda update python

