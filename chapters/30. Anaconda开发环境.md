![img](res/other/异世界蕾姆_1.png)

# Anaconda介绍

Anaconda（[官方网站](https://link.zhihu.com/?target=https%3A//www.anaconda.com/download/%23macos)）就是可以便捷获取包且对包能够进行管理，同时对环境可以统一管理的发行版本。Anaconda包含了conda、Python在内的超过180个科学包及其依赖项。

# Anaconda Prompt 管理套件

> 显示已安装的套件

```cmd
conda list
pip list
```

> 套件安装

```cmd
conda install packages # pip可以安装一些conda安装不了的包
pip install packages [-i https://pypi.douban.com/simple] # -i部分临时指定pip源
easy_install 参数 packages
python setup.py install # 下载源码，进入到源码路径下
```

>国内的pip源

阿里云 https://mirrors.aliyun.com/pypi/simple/

中国科技大学 https://pypi.mirrors.ustc.edu.cn/simple/

豆瓣(douban) https://pypi.douban.com/simple/

清华大学 https://pypi.tuna.tsinghua.edu.cn/simple/

>从Anaconda.org安装套件

```cmd
# 如果一个包不能使用conda安装，可在Anaconda.org查找
# 在左上角的叫“Search Anaconda Cloud”搜索框中输入“包名”并点击search按钮
conda install --channel https://conda.anaconda.ort/pandas bottleneck # 安装bottleneck包
```

> 删除套件

```cmd
conda/pip uninstall packages
easy_install -m packages
```

> 查找套件

```cmd
conda search packages
```

# 虚拟环境管理

**使用Anaconda Prompt 管理虚拟环境**

> 新建虚拟环境

```cmd
conda create -n 环境名 python=3.7 anaconda
```

添加后缀 “anaconda”或“biopython”可以创建一个基本科学计算功能完备的环境

> 切换虚拟环境

```cmd
source activate snowflakes # Linux，OS X
activate snowflakes # Windows
```

> 关闭虚拟环境

```cmd
source deactivate # Linux，OS X
deactivate # Windows
```

> 查看所有的虚拟环境名称

```
conda info -e
conda env list
```

> 移除虚拟环境

```cmd
conda remove -n 虚拟环境名称 --all
```

> 复制虚拟环境

```cmd
conda create -n 虚拟环境名称 --clone root
```

> IPython 交谈式命令窗口

* cmd中python模式的加强版

* 观看先前输入的程序代码 history

* 查询使用说明 ?加在命令后面

* 简易智能输入

* 执行python档案 %run 档案路径

> 更新conda本身

```powershell
conda update conda
```

> 更新anaconda 应用

```cmd
conda update anaconda
```

> 更新python

假设当前python环境是3.6.1，而最新版本是3.6.2，那么就会升级到3.6.2

```cmd
conda update python
```



# conda源管理

> 查看当前源信息

```powershell
conda info
```

关注 channel URLs 字段内容

> 添加一个镜像

```cmd
# 添加镜像
(base) C:\Users\hyc>conda config --add channels 'https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/'

# 设置搜索时显示channel地址
(base) C:\Users\hyc>conda config --set show_channel_urls yes
```

> 删除一个镜像

```cmd
# 注意链接要有引号，英文输入法
(base) C:\Users\hyc>conda config --remove channels 'https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/'
```

> 查看conda的镜像

```cmd
conda config --show-sources
conda config --show channels
```

> 删除所有镜像

conda config --remove-key channels



# 其他管理

> 运行环境分享

执行如下命令可以将当前环境下的 package 信息存入名为 environment 的 YAML 文件中

```cmd
conda env export > environment.yaml
```

> 使用yaml文件创建环境

```cmd
conda env create -f environment.yaml
```

> 国内常见源
>
> * [anaconda conda 切换为国内源](https://blog.csdn.net/qq_29007291/article/details/81103603)
> * [Anaconda 镜像使用帮助](https://mirror.tuna.tsinghua.edu.cn/help/anaconda/)
> * [国内可用Anaconda 源的镜像站及换国内源方法](https://www.cnblogs.com/dereen/p/anaconda_tencent_mirrors.html)




linux可行


conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/

conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/

conda config --set show_channel_urls yes



