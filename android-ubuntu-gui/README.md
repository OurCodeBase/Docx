### Hello world !
This is a simple documentation for you.
This documentation helps you to install `xfce4` based `ubuntu` gui for your android.
<hr />
<img src="assets/ubuntu-linux.jpg">

#### Upcoming Features
* Reduces app size
* Remove useless apps
* Fast user experience
* Beautiful looking UI

#### Requirements !
* A `ubuntu` installed on your terminal emulator.
* Your `ubuntu` should be rooted. If you don't have root, use `su` command and then use a `cd` command to go at home directory.
* Minimum 2GB free storage.
* Minimum 512MB of free RAM for better performance.
* Minimum 1GB of Internet.
* Good Internet Connection obviously.
* Free Time

#### Commands !

* Follow These Steps
* Don't use commands manually just copy and paste to save time.

```shell
sudo clear && sudo apt update && sudo apt install tigervnc-standalone-server udisks2 xfce4 tilda dbus-x11 mousepad -y && sudo apt remove tightvncserver
```
<hr />
It may take too much time.
After sometime it will ask you for Keyboard Layout. <br><br>
<img src="assets/keyboard-layout.jpg">

Simply `enter` `1` in it and hit the `enter` button.

<hr />

* Next Commands

If you want to run `ubuntu` on a large display you can use this command or you can try that second one.


* For Large Display

``` shell
sudo rm /var/lib/dpkg/info/udisks2.postinst && sudo echo "" >> /var/lib/dpkg/info/udisks2.postinst && sudo dpkg --configure -a && sudo apt-mark hold udisks2 && curl -OL https://raw.githubusercontent.com/harsh7i/Docx/main/android-ubuntu-gui/full-hd-screen/vncstart && curl -OL https://raw.githubusercontent.com/harsh7i/Docx/main/android-ubuntu-gui/hd-screen/vncstop && mv vncst* /usr/bin && chmod +x /usr/bin/vncst*
```

* For Small Display
```shell
sudo rm /var/lib/dpkg/info/udisks2.postinst && sudo echo "" >> /var/lib/dpkg/info/udisks2.postinst && sudo dpkg --configure -a && sudo apt-mark hold udisks2 && curl -OL https://raw.githubusercontent.com/harsh7i/Docx/main/android-ubuntu-gui/hd-screen/vncstart && curl -OL https://raw.githubusercontent.com/harsh7i/Docx/main/android-ubuntu-gui/hd-screen/vncstop && mv vncst* /usr/bin && chmod +x /usr/bin/vncst*
```

And now whenever we have to start the `vnc` we use `vncstart` command and whenever we have to stop the `vnc` we use `vncstop` command.


If you see this <br><br>
<img src="assets/vnc-password.jpg"><br>
Use any password what you want,
But in `view-only` password section only use `n` and hit the `enter` button.


I hope you understand how to use vnc viewer app. If not i will make a tutorial for you.

#### Warning !
* Don't use `vncstart` or `vncstop` command twice.
* First use `vncstart` command and then `vncstop`.
* Always use `vncstop` command after using `ubuntu` gui.

Otherwise these shortcut commands will not work.