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

cd $HOME/edk2
. edksetup.sh BaseTools