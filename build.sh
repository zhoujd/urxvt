#!/bin/bash

build() {
    mkdir -p rxvt-unicode/build
    pushd rxvt-unicode/build
    ../configure \
        --prefix=/usr/local \
        --enable-everything \
        --enable-256-color
    make -j4
    sudo make install
    popd
    echo "Build Done"
}

clean() {
    git clean -dfx
    echo "clean Done"
}

case $1 in
    build|-b )
        build
        ;;
    clean|-c )
        clean
        ;;
    * )
        echo "Usage $(basename $0) {build|-b|clean|-c}"
        ;;
esac
