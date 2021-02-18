![img](res/other/异世界蕾姆_1.png)

# Elementary os介绍

## 双系统安装

制作启动盘

空白分区

<img src="res/elementary%20os%20%E8%AE%B0%E5%BD%95/image-20200808173427756.png" alt="image-20200808173427756" style="zoom: 33%;" />



tf按F2进入BIOS，设置U盘启动

<img src="res/elementary%20os%20%E8%AE%B0%E5%BD%95/image-20200808172913899.png" alt="image-20200808172913899" style="zoom:50%;" />



重启



安装类别，这里选something else，表示自己选分区（如果是刚装完win10，立马装linux，可以选第一个）

这里是因为，原先就是win10+linux，现在想重装linux

<img src="res/elementary%20os%20%E8%AE%B0%E5%BD%95/image-20200808173701723.png" alt="image-20200808173701723" style="zoom:50%;" />

选择事先分好的分区

<img src="res/elementary%20os%20%E8%AE%B0%E5%BD%95/image-20200808173811571.png" alt="image-20200808173811571" style="zoom: 33%;" />

正式开始安装

<img src="res/elementary%20os%20%E8%AE%B0%E5%BD%95/image-20200808173848636.png" alt="image-20200808173848636" style="zoom:50%;" />



# 软件安装

## 安装typora

```cmd
# or run:
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -

# add Typora's repository
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update

# install typora
sudo apt-get install typora
```

## 显卡驱动

> [Ubuntu 18.04 安装 NVIDIA 显卡驱动](https://zhuanlan.zhihu.com/p/59618999)

我们今天的目标是在 Ubuntu 18.04 上安装 NVIDIA 显卡驱动，请注意，你的显卡一定要是 NVIDIA 的显卡才能按照这篇文章的方法安装。我将给大家介绍三种安装方法，建议使用第一种方法安装。

先来说说带有 NVIDIA 独立显卡的电脑为什么要安装 NVIDIA 显卡驱动吧。下面是我从维基百科摘抄的显卡工作原理的介绍：

> 显卡是插在主板上的扩展槽里的（现在一般是 PCI-E 插槽，此前还有 AGP、PCI、ISA 等插槽）。它主要负责把主机向显示器发出的显示信号转化为一般电器信号，使得显示器能明白个人计算机在让它做什么。显卡的主要芯片叫“显示芯片”（Video chipset，也叫 GPU 或 VPU，图形处理器或视觉处理器），是显卡的主要处理单元。显卡上也有和计算机存储器相似的存储器，称为“显示存储器”，简称显存。
> 早期的显卡只是单纯意义的显卡，只起到信号转换的作用；当前我们一般使用的显卡都带有 3D 画面运算和图形加速功能，所以也叫做“图形加速卡”或“3D 加速卡”。PC 上最早的显卡是 IBM 在 1981 年推出的 5150 个人计算机上所搭载的 MDA 和 CGA 两款 2D 加速卡。
> 显卡通常由总线接口、PCB 板、显示芯片、显存、RAMDAC、VGA BIOS、VGA 功能插针、D-sub 插座及其他外围组件构成，现在的显卡大多还具有 VGA、DVI 显示器接口或者 HDMI 接口及 S-Video 端子和 Display Port 接口。

电脑硬件有 NVIDIA 的显卡，但是没有驱动，那它是不能工作的，所以为了让显卡能够工作，发挥它的作用，我们需要安装显卡驱动。好的，下面来看看三种不同的安装方法吧。

### 稳定版本安装

#### 显卡型号

在终端输入：`ubuntu-drivers devices`，可以看到如下界面：

![img](res/elementary%20os%20%E8%AE%B0%E5%BD%95/v2-5d32bffc05c68bf8edbd27fd20e837b0_720w.jpg)

从上图可以看出，我的显卡是：`GM107M [GeForce GTX 860M]`，推荐安装的版本号是：`nvidia-driver-390 - distro non-free recommended`。

#### 开始安装

- 如果同意安装推荐版本，那我们只需要终端输入：`sudo ubuntu-drivers autoinstall` 就可以自动安装了。
- 当然我们也可以使用 apt 命令安装自己想要安装的版本，比如我想安装 `340` 这个版本号的版本，终端输入：`sudo apt install nvidia-340` 就自动安装了。
- 安装过程中按照提示操作，除非你知道每个提示的真实含义，否则所有的提示都选择默认就可以了，安装完成后重启系统，NVIDIA 显卡就可以正常工作了。安装完成后你可以参照 `https://linuxconfig.org/benchmark-your-graphics-card-on-linux` 上的介绍测试你的显卡。

### ppa第三方

使用 PPA 第三方软件仓库安装最新版本

- 添加 PPA 软件仓库：`sudo add-apt-repository ppa:graphics-drivers/ppa`，需要输入用户密码，按照提示还需要按下 Enter 键。
- 更新软件索引：`sudo apt update`
- 接下来的步骤同方法一，只是这样我们就可以选择安装最新版本的驱动程序了。

### NVIDIA官网安装

- 打开终端，输入：`lshw -numeric -C display`，确认自己电脑显卡的型号，如下图：

![img](res/elementary%20os%20%E8%AE%B0%E5%BD%95/v2-592fd9491dfa98dfc005c2dd9e966404_720w.jpg)

从上图可以看到，我的电脑的显卡是 `product: GM107M [GeForce GTX 860M] [10DE:1392]`，然后我们到 NVIDIA 的官网下载相应型号的驱动，官网地址是：`https://www.nvidia.com/Download/index.aspx`，如下图，我选择 GTX 860 显卡的驱动下载。

![img](res/elementary%20os%20%E8%AE%B0%E5%BD%95/v2-586ce06ccebb8ec8d2013f81e4d1232e_720w.jpg)

注意每个选项，特别是操作系统那里，一定选择 Linux 64-bit

选好后点击 SEARCH 按钮搜索相应的驱动，如下图：

![img](res/elementary%20os%20%E8%AE%B0%E5%BD%95/v2-cad8de4d54178b21244a0e2c124a55ff_720w.jpg)

看到了吧，官方最新版本号已经是 418.43 了。点击 DOWNLOAD 按钮下载吧。

接着需要先安装一些 NVIDIA 显卡依赖的软件，在终端依次执行如下命令：

- `sudo dpkg --add-architecture i386`
- `sudo apt update`
- `sudo apt install build-essential libc6:i386`

Ubuntu 系统默认安装好是使用的一个开源的驱动：`nouveau`，我们要安装官方的驱动需要先禁用这个开源驱动，方法如下，依次执行：

- `sudo bash -c "echo blacklist nouveau > /etc/modprobe.d/blacklist-nvidia-nouveau.conf"`
- `sudo bash -c "echo options nouveau modeset=0 >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf"`

执行完上面两条指令后，我们使用如下命令看看是否成功禁用了开源驱动：`cat /etc/modprobe.d/blacklist-nvidia-nouveau.conf`。如果和下面一样，表示成功了。

```text
$ cat /etc/modprobe.d/blacklist-nvidia-nouveau.conf
blacklist nouveau
options nouveau modeset=0
```

这个时候我们需要先重启一下系统，重启吧。

重启成功后打开终端，输入如下命令：`sudo telinit 3`。然后按快捷键：`CTRL+ALT+F1` 进入字符界面，输入用户名和密码，然后登录系统，进入我们保存下载 NVIDIA 驱动的目录，默认是：`Downloads/` 目录，`cd Downloads/`，然后执行：`bash NVIDIA-Linux-x86_64-418.43.bin`。注意：`NVIDIA-Linux-x86_64-418.43.bin` 要根据你下载的驱动文件的名字相应改动。

安装过程中都点同意即可，如果你遇到下面的提示，安装下面我的输入输入后回车继续安装：

> The distribution-provided pre-install script failed!
> Are you sure you want to continue? -> **CONTINUE INSTALLATION**
> Would you like to run the nvidia-xconfig utility? -> **YES**

安装完成后重启系统就可以点击软件列表中的 NVIDIA 的配置软件配置显卡驱动了，如果你遇到如下报错，请依次在终端输入如下命令解决：

- 报错：WARNING: Unable to find suitable destination to install 32-bit compatibility libraries

- 解决办法：

- - sudo dpkg --add-architecture i386
  - sudo apt update
  - sudo apt install libc6:i386

好了，今天分享了如何安装 NVIDIA 显卡驱动，再次提醒，如果你的显卡不是 NVIDIA 显卡，千万不要这么干，也不要在虚拟机中这么干。



## elasticsearch6

### es和kibana版本

| Elasticsearch | Kibana | X-Pack | Beats^*     | Logstash^*  | ES-Hadoop (jar)* | APM Server     | App Search |
| :------------ | :----- | :----- | :---------- | :---------- | :--------------- | :------------- | :--------- |
| 5.0.x         | 5.0.x  | 5.0.x  | 1.3.x-5.6.x | 2.4.x-5.6.x | 5.0.x-5.6.x      |                |            |
| 5.1.x         | 5.1.x  | 5.1.x  | 1.3.x-5.6.x | 2.4.x-5.6.x | 5.0.x-5.6.x      |                |            |
| 5.2.x         | 5.2.x  | 5.2.x  | 1.3.x-5.6.x | 2.4.x-5.6.x | 5.0.x-5.6.x      |                |            |
| 5.3.x         | 5.3.x  | 5.3.x  | 1.3.x-5.6.x | 2.4.x-5.6.x | 5.0.x-5.6.x      |                |            |
| 5.4.x         | 5.4.x  | 5.4.x  | 1.3.x-5.6.x | 2.4.x-5.6.x | 5.0.x-5.6.x      |                |            |
| 5.5.x         | 5.5.x  | 5.5.x  | 1.3.x-5.6.x | 2.4.x-5.6.x | 5.0.x-5.6.x      |                |            |
| 5.6.x         | 5.6.x  | 5.6.x  | 1.3.x-6.0.x | 2.4.x-6.0.x | 5.0.x-6.0.x      |                |            |
| 6.0.x         | 6.0.x  | 6.0.x  | 5.6.x-6.8.x | 5.6.x-6.8.x | 6.0.x-6.8.x      |                |            |
| 6.1.x         | 6.1.x  | 6.1.x  | 5.6.x-6.8.x | 5.6.x-6.8.x | 6.0.x-6.8.x      |                |            |
| 6.2.x         | 6.2.x  | 6.2.x  | 5.6.x-6.8.x | 5.6.x-6.8.x | 6.0.x-6.8.x      | 6.2.x-6.8.x    |            |
| 6.3.x         | 6.3.x  | N/A**  | 5.6.x-6.8.x | 5.6.x-6.8.x | 6.0.x-6.8.x      | 6.2.x-6.8.x    |            |
| 6.4.x         | 6.4.x  | N/A**  | 5.6.x-6.8.x | 5.6.x-6.8.x | 6.0.x-6.8.x      | 6.2.x-6.8.x    |            |
| 6.5.x         | 6.5.x  | N/A**  | 5.6.x-6.8.x | 5.6.x-6.8.x | 6.0.x-6.8.x      | 6.2.x-6.8.x    |            |
| 6.6.x         | 6.6.x  | N/A**  | 5.6.x-6.8.x | 5.6.x-6.8.x | 6.0.x-6.8.x      | 6.2.x-6.8.x    |            |
| 6.7.x         | 6.7.x  | N/A**  | 5.6.x-6.8.x | 5.6.x-6.8.x | 6.0.x-6.8.x      | 6.2.x-6.8.x    |            |
| 6.8.x         | 6.8.x  | N/A**  | 5.6.x-6.8.x | 5.6.x-6.8.x | 6.0.x-6.8.x      | 6.2.x-6.8.x    |            |
| 7.0.x         | 7.0.x  | N/A**  | 6.8.x-7.4.x | 6.8.x-7.4.x | 6.8.x-7.4.x      | 7.0.x-7.4.x*** |            |
| 7.1.x         | 7.1.x  | N/A**  | 6.8.x-7.4.x | 6.8.x-7.4.x | 6.8.x-7.4.x      | 7.0.x-7.4.x*** |            |
| 7.2.x         | 7.2.x  | N/A**  | 6.8.x-7.4.x | 6.8.x-7.4.x | 6.8.x-7.4.x      | 7.0.x-7.4.x*** | 7.2.x      |
| 7.3.x         | 7.3.x  | N/A**  | 6.8.x-7.4.x | 6.8.x-7.4.x | 6.8.x-7.4.x      | 7.0.x-7.4.x*** | 7.3.x      |
| 7.4.x         | 7.4.x  | N/A**  | 6.8.x-7.4.x | 6.8.x-7.4.x | 6.8.x-7.4.x      | 7.0.x-7.4.x*** | 7.4.x      |

> [kibana国内下载地址](https://www.newbe.pro/Mirrors/Mirrors-Kibana/)

### jdk环境安装

在 /etc/profile 文件下添加以下配置

```cmd
# jdk config
JAVA_HOME=/usr/java/jdk1.8.0_241-amd64
JRE_HOME=/usr/java/jdk1.8.0_241-amd64/jre
export CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib:$CLASSPATH  
export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH
```



### 新建用户

```cmd
sudo mkdir /home/user_group/
sudo groupadd user_group
sudo useradd elasticsearch -g user_group -p elasticsearch
passwd elasticsearch
es
es
```

> 不能使用TAB键、上下键，命令行不显示当前路径的解决

因默认ubuntu创建的普通帐号，默认shell为/bin/sh，而这不支持tab等键的，所以将「指定用户」帐号的shell改为/bin/bash就可以了。

```cmd
>>> echo $SHELL
/bin/sh
>>> usermod -s /bin/bash 用户名
```

### es配置

解压后进入目录，配置elasticsearch内外网可访问以及端口绑定

```bash
cd elasticsearch-6.8.7
vi ./config/elasticsearch.yml
```

在最后面加上

```css
network.host: 0.0.0.0
http.port: 9200
```

保存退出，这个时候直接运行 `./bin/elasticsearch`会报错

```cmd
bound or publishing to a non-loopback address, enforcing bootstrap checks
```

重新切回root用户

```cmd
su root
```

编辑 /etc/security/limits.conf，追加以下内容

```cmd
* soft nofile 65536
* hard nofile 65536
```

此文件修改后需要重新登录用户，才会生效

编辑 /etc/sysctl.conf，追加以下内容：

```cmd
vm.max_map_count=655360
```

保存后，执行：

```cmd
sysctl -p
```



### 启动

切回新建的用户回到elasticsearch目录下

```cmd
elasticsearch@hyc:/media/hyc/linux/elementary os/software/elasticsearch-6.7.1$ source /etc/profile
elasticsearch@hyc:/media/hyc/linux/elementary os/software/elasticsearch-6.7.1$ echo $JAVA_HOME
/usr/java/jdk1.8.0_241-amd64
elasticsearch@hyc:/media/hyc/linux/elementary os/software/elasticsearch-6.7.1$ ./bin/elasticsearch
warning: Falling back to java on path. This behavior is deprecated. Specify JAVA_HOME
[2020-08-08T13:14:40,834][INFO ][o.e.e.NodeEnvironment    ] [EsTp_cx] using [1] data paths, mounts [[/media/hyc/linux (/dev/sdb6)]], net usable_space [545.8gb], net total_space [999.9gb], types [fuseblk]
[2020-08-08T13:14:40,836][INFO ][o.e.e.NodeEnvironment    ] [EsTp_cx] heap size [989.8mb], compressed ordinary object pointers [true]
[2020-08-08T13:14:40,839][INFO ][o.e.n.Node               ] [EsTp_cx] node name derived from node ID [EsTp_cxdSjehAblsJRe8tA]; set [node.name] to override
[2020-08-08T13:14:40,840][INFO ][o.e.n.Node               ] [EsTp_cx] version[6.7.1], pid[934], build[default/tar/2f32220/2019-04-02T15:59:27.961366Z], OS[Linux/5.4.0-42-generic/amd64], JVM[Oracle Corporation/Java HotSpot(TM) 64-Bit Server VM/1.8.0_241/25.241-b07]
[2020-08-08T13:14:40,840][INFO ][o.e.n.Node               ] [EsTp_cx] JVM arguments [-Xms1g, -Xmx1g, -XX:+UseConcMarkSweepGC, -XX:CMSInitiatingOccupancyFraction=75, -XX:+UseCMSInitiatingOccupancyOnly, -Des.networkaddress.cache.ttl=60, -Des.networkaddress.cache.negative.ttl=10, -XX:+AlwaysPreTouch, -Xss1m, -Djava.awt.headless=true, -Dfile.encoding=UTF-8, -Djna.nosys=true, -XX:-OmitStackTraceInFastThrow, -Dio.netty.noUnsafe=true, -Dio.netty.noKeySetOptimization=true, -Dio.netty.recycler.maxCapacityPerThread=0, -Dlog4j.shutdownHookEnabled=false, -Dlog4j2.disable.jmx=true, -Djava.io.tmpdir=/tmp/elasticsearch-5133240268811839837, -XX:+HeapDumpOnOutOfMemoryError, -XX:HeapDumpPath=data, -XX:ErrorFile=logs/hs_err_pid%p.log, -XX:+PrintGCDetails, -XX:+PrintGCDateStamps, -XX:+PrintTenuringDistribution, -XX:+PrintGCApplicationStoppedTime, -Xloggc:logs/gc.log, -XX:+UseGCLogFileRotation, -XX:NumberOfGCLogFiles=32, -XX:GCLogFileSize=64m, -Des.path.home=/media/hyc/linux/elementary os/software/elasticsearch-6.7.1, -Des.path.conf=/media/hyc/linux/elementary os/software/elasticsearch-6.7.1/config, -Des.distribution.flavor=default, -Des.distribution.type=tar]
[2020-08-08T13:14:42,612][INFO ][o.e.p.PluginsService     ] [EsTp_cx] loaded module [aggs-matrix-stats]
[2020-08-08T13:14:42,613][INFO ][o.e.p.PluginsService     ] [EsTp_cx] loaded module [analysis-common]
．．．．．．．
[2020-08-08T13:14:51,868][INFO ][o.e.c.m.MetaDataIndexTemplateService] [EsTp_cx] adding template [.monitoring-alerts] for index patterns [.monitoring-alerts-6]
[2020-08-08T13:14:51,942][INFO ][o.e.c.m.MetaDataIndexTemplateService] [EsTp_cx] adding template [.monitoring-kibana] for index patterns [.monitoring-kibana-6-*]
[2020-08-08T13:14:52,103][INFO ][o.e.l.LicenseService     ] [EsTp_cx] license [08975435-c155-421d-ae6f-290e44abae0b] mode [basic] - valid
```

#### 后台启动

```cmd
./bin/elasticsearch -d
```

### 访问

> http://192.168.0.102:9200/
>
> ```json
> {
>   "name" : "EsTp_cx",
>   "cluster_name" : "elasticsearch",
>   "cluster_uuid" : "TKaUQKssQlODq4xfwdaQ1Q",
>   "version" : {
>     "number" : "6.7.1",
>     "build_flavor" : "default",
>     "build_type" : "tar",
>     "build_hash" : "2f32220",
>     "build_date" : "2019-04-02T15:59:27.961366Z",
>     "build_snapshot" : false,
>     "lucene_version" : "7.7.0",
>     "minimum_wire_compatibility_version" : "5.6.0",
>     "minimum_index_compatibility_version" : "5.0.0"
>   },
>   "tagline" : "You Know, for Search"
> }
> ```
>
> 



### kibana安装

> 设置kibana环境变量

```cmd
sudo gedit /etc/profile 
添加
KIBANA_HOME=/home/tq/kibana-5.6.5-linux-x86_64
PATH=$KIBANA_HOME:$PATH
export KIBANA_HOME
```

> 运行kibana

```cmd
./bin/kibana
```

> 访问kibana
>
> http://127.0.0.1:5601



### 安装head

> 修改elasticsearch.yml，增加跨域的配置(需要重启es才能生效)

```cmd
vi /etc/elasticsearch/elasticsearch.yml

# 加入配置:
http.cors.enabled: true
http.cors.allow-origin: "*"
```

> 修改Gruntfile.js文件，修改服务监听地址（增加hostname属性，将其值设置为'0.0.0.0’）
>
> 92行添加：hostname:'0.0.0.0',

```json

		watch: {
			"scripts": {
				files: ['src/**/*', 'test/spec/*' ],
				tasks: ['default'],
				options: {
					spawn: false
				}
			},
			"grunt": {
				files: [ 'Gruntfile.js' ]
			}
		},
		connect: {
			server: {
				options: {
					hostname:'0.0.0.0',
					port: 9100,
					base: '.',
					keepalive: true
				}
			}
		}
	});
	grunt.loadNpmTasks('grunt-contrib-clean');
```



## 远程桌面rdesktop

**首先安装rdesktop工具**

```cmd
kevin@bobo:~$ sudo apt-get install rdesktop
```

默认端口是3389
注意：远程windows机器的服务中的 Terminal Servies 需要开启。即：我的电脑-右键-属性-远程中，勾选 允许远程用户链接到此计算机。

针对rdesktop命令的参数解释：

```cmd
-f      全屏
-a      16位色,可选，不过最高就是16位
-u xxxxxx      登录用户，可选
-p xxxxxx      登录密码，可选
-r clipboard:PRIMARYCLIPBOARD     重要，剪贴板可以与远程桌面交互
-z      压缩，可选
-g 1024x768     分辨率，可选，缺省是一种比当前本地桌面低的分辨率
-P     缓冲，可选
-r disk:wj=/home/magicgod      映射虚拟盘，可选，会在远程机器的网上邻居里虚拟出一个映射盘，功能很强，甚至可以是软盘或光盘
-r sound:off     关闭声音，当然也可以把远程发的声音映射到本地来。
```

**特别注意：**rdesktop退出全屏模式 ：使用组合键ctrl+alt+enter进行切换；上面脚本执行后，发现全屏不了，明明已经加了-f参数，这是因为加了"-g 1024x768"的分辨率参数，去掉这个分辨率参数就可以实现全屏了！

此外，Ubuntu除了上面的rdesktop命令进行远程连接操作外，还可以使用自带的Remmina进行ssh、VNC、RDP(连接windows机器)远程连接。





## 迅雷

> ```cmd 
> 需要软件：Ktorent, Amule
> 
> 安装软件：
> 
> sudo apt-get install ktorrent
> sudo apt-get install amule
> ```
>
> 



## chrome插件

### 破解VIP会员视频集合

### Tampermonkey

### gitzip for github

### octotree

### CNKI PDF Download



# 其他技巧

## 自动挂载磁盘

### 查看磁盘属性

```cmd
hyc@hyc:~/Downloads$ blkid
/dev/sda1: LABEL="M-fM-^AM-\"M-eM-$M-^M" UUID="C43C21073C20F5D8" TYPE="ntfs" PARTLABEL="Basic data partition" PARTUUID="28719635-d995-4e4f-8842-d4dadf1de022"
/dev/sda2: UUID="D621-7B3A" TYPE="vfat" PARTLABEL="EFI system partition" PARTUUID="2aa389ac-d040-4070-92bc-b6840310b686"
/dev/sda4: LABEL="local" UUID="286C27576C271F56" TYPE="ntfs" PARTLABEL="Basic data partition" PARTUUID="4ad76de5-bf50-4f27-8abf-8f880eb4b4c7"
/dev/sda5: UUID="A64A3E1F4A3DED25" TYPE="ntfs" PARTUUID="7e64d242-e149-4910-b732-ecb02266b48d"
/dev/sda6: UUID="2c1a9fc5-6017-4802-bb17-1b697eb4ba39" TYPE="swap" PARTUUID="a028e7db-32f0-4298-b259-cb0245a9151e"
/dev/sda7: UUID="03fe0c70-4d06-4023-94fb-d3af41cefee6" TYPE="ext4" PARTUUID="754efc8f-c0f9-40c6-8eae-bfe61b029ba6"
/dev/sdb2: LABEL="download" UUID="5A26CFCB26CFA5FB" TYPE="ntfs" PARTLABEL="Basic data partition" PARTUUID="ee7174a3-6cc8-407b-9a9f-ead9f3ce85f0"
/dev/sdb3: LABEL="software" UUID="22BACF07BACED707" TYPE="ntfs" PARTLABEL="Basic data partition" PARTUUID="8b742348-2ef4-429e-8a02-76a6e0f49f44"
/dev/sdb4: LABEL="qoding" UUID="428AE1638AE153C7" TYPE="ntfs" PARTLABEL="Basic data partition" PARTUUID="511c889e-d4ba-46b0-8df6-c9e360268abb"
/dev/sdb5: LABEL="student" UUID="420EF5340EF52199" TYPE="ntfs" PARTLABEL="Basic data partition" PARTUUID="3349a79c-d864-41ab-8bde-5f65172d9e5a"
/dev/sdb6: LABEL="linux" UUID="702AA8C82AA88D22" TYPE="ntfs" PARTLABEL="Basic data partition" PARTUUID="696e0d44-726d-455b-ae87-f55db96bd6d3"
/dev/sdb7: LABEL="entertainment" UUID="009CAE0B9CADFB74" TYPE="ntfs" PARTLABEL="Basic data partition" PARTUUID="78cf7f18-0257-45f8-8fb4-aa49567f54c1"
```

### 添加挂载项

> ```cmd
> hyc@hyc:~/Downloads$ sudo gedit /etc/fstab
> 在末尾添加，/media/hyc路径需要提前创建　qoding是挂载后的名字，自动会创建
> /dev/sdb4 /media/hyc/qoding ntfs defaults 0 0
> /dev/sdb6 /media/hyc/linux ntfs defaults 0 0
> ```

## ssh到服务器

> ```cmd
> ssh root@http://112.126.102.142:22
> ```
>
> 退出远程用`logout`