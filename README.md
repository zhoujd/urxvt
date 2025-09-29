README
======

## URLs

```
## https://www.linuxfromscratch.org/blfs/view/11.1/xsoft/rxvt-unicode.html
## http://dist.schmorp.de/rxvt-unicode/Attic/rxvt-unicode-9.30.tar.bz2
```

## Build depends

```
$ sudo apt-get install libperl-dev libptytty-dev
```

## Build rxvt-unicode

```
$ mkdir -p rxvt-unicode/build
$ cd rxvt-unicode/build
$ ../configure --prefix=/usr/local --enable-everything
$ make -j4
$ sudo make install
$ urxvt
```
