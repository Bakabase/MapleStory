# MapleStory

枫之谷工具包/MapleStory Tools

## 启动器/Launcher

一次配置即可使用，纯净无毒不盗号的启动器，所有脚本内容透明展示，可根据自己需求随意调整

### 准备工作

1. 下载并安装地区模拟器 https://github.com/xupefei/Locale-Emulator/releases
2. 配置本地Powershell允许执行脚本
   1. 用管理员模式启动powershell
   2. 输入`Set-ExecutionPolicy Unrestricted`，回车
   3. 输入`y`，回车
   4. 该步骤如有问题可以百度

### 配置

1. 进入你的枫之谷文件夹，右键点击你的枫之谷exe文件（默认是MapleStory.exe）；
2. 在右键弹出的窗口里选择Locale Emulator -> Modify Application Profile，会出现一个窗口名叫LEGUI - 你的exe文件名，如果没有Locale Emulator请安装地区模拟器。
3. 在新弹出的窗口里：
   1. Location Settings里选择Chinese（Traditional，Hong Kong SAR）；
   2. Timezone选择UTC+8:00
   3. Advanced Options选择Run as administrator，Fake language-relatived keys in Registry
   4. 点击保存/Save，此时会自动运行一次冒险岛，关闭即可
4. 将本项目的Launcher.ps1文件复制到本地，并且用任意文本编辑器打开它；
   1. 将$localname改为你的枫之谷exe文件名（默认是MapleStory，不要包含后缀.exe）；
   2. 修改Start-Process这一行右侧的Locale-Emulator地址和你的枫之谷exe文件地址
5. 为了方便使用，可以创建快捷方式到桌面。如果自行创建则忽略以下步骤：
   + 将Launcher - Shortcut复制到桌面，右键它选择属性。在快捷方式（shortcut）选项卡中修改Target中的powershell.exe地址以及ms.ps1的地址。同时点击当前选项卡中的高级（advanced），勾选用管理员启动（run as administrator）

### 启动

1. 每次启动游戏前，都要双击打开上面创建的快捷方式，启动成功后，会有一个黑色窗口，会显示类似如下内容：
```console
Waiting for official process MapleStory.exe: 7 s
Waiting for official process MapleStory.exe: 8 s
Waiting for official process MapleStory.exe: 9 s
Waiting for official process MapleStory.exe: 10 s
Waiting for official process MapleStory.exe: 11 s
```
2. 用ie打开香港beanfun官网，登陆你的账号；
3. 在beanfun官网启动枫之谷，上面的黑色窗口会闪几行文字表示启动成功并且自动关闭；
4. 干翻橘子吧！

## 反馈

有问题请直接提交Issue。<br />
如果喜欢本项目请点击右上角的Star，非常感谢！
