#! /bin/bash
if [ ! -d $HOME/edk2 ];then
    cp -Rv /mnt/edk2 $HOME/edk2
fi

if [ ! -d $HOME/YukiPkg ];then
    cp -Rv /mnt/YukiPkg $HOME/YukiPkg
    ln -s ../YukiPkg $HOME/edk2/YukiPkg
fi

if [ ! -f $HOME/edk2/Conf/target.txt ];then
    cd $HOME/edk2
    make -C BaseTools
    . edksetup.sh
fi

if [ ! -h $HOME/edk2/StdLib ];then
    cd $HOME/edk2
    ln -s YukiPkg/Libs/libc/StdLib StdLib
    ln -s YukiPkg/Libs/libc/StdLibPrivateInternalFiles StdLibPrivateInternalFiles
fi

if [ ! -f $HOME/YukiPkg/Libs/libjpeg-turbo/jconfig.h ];then
    cd $HOME/YukiPkg/Libs/libjpeg-turbo
    cmake -G"Unix Makefiles" -DWITH_SIMD=0 -DWITH_JPEG8=1
    make
fi

cd $HOME/edk2
. edksetup.sh BaseTools

