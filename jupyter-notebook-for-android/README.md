### Hello world !
This is a simple documentation to install `jupyter notebook` on your `android`.

#### Requirements
* Installed `Python` on `Termux`.
* `pip` commamd should be working.
* Internet connection obviously.
* Minimum `100MB` Storage.
* Free Time.

#### Installation !
You have to install these packages with `apt install` commamd.
```shell
apt install clang python  fftw libzmq freetype libpng pkg-config
```
Now you have to install `jupyter notebook` with a little weird method.
```shell
LDFLAGS=" -lm -lcompiler\_rt" pip install jupyter
```
