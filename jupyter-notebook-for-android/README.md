### Hello world !
This is a simple documentation to install `jupyter notebook` on your `android`.

#### Upcoming Features !
* Extensions
* Numpy
* Tensorflow
* OpenCV-Python
* etc

#### Requirements !
* Installed `Python` on `Termux`.
* `pip` commamd should be working.
* Internet connection obviously.
* Minimum `100MB` Storage.
* Free Time.

#### Installation !
You have to install these packages with `apt install` commamd.
```shell
apt install clang libxml2 libxslt fftw libzmq freetype libpng pkg-config
```
Now you have to install `jupyter notebook` with this wierd command. I don't know why simple command does not work.
```shell
pip install lxml
```
```shell
LDFLAGS=" -lm -lcompiler\_rt" pip install jupyter
```

Your `jupyter notebook` is successfully installed. Now just type `jupyter notebook` command to start it.