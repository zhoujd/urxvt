#!/bin/bash

dep() {
    sudo apt install -y \
         libperl-dev libptytty-dev
    echo "Install depends Done"
}

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
    dep|-d )
        dep
        ;;
    build|-b )
        build
        ;;
    clean|-c )
        clean
        ;;
    * )
        echo "Usage $(basename $0) {dep|-d|build|-b|clean|-c}"
        ;;
esac
