#### First time setup to build
```shell

apt-get update
apt-get install -y build-essential libncurses-dev bison flex libssl-dev libelf-dev  linux-source tree mlocate build-essential kernel-package fakeroot libncurses5-dev libssl-dev ccache flex bison libelf-dev

make ARCH=x86_64 x86_64_defconfig


# This is optional
make ARCH=x86_64 menuconfig
  -> Kernel Hacking -> "compile type check ... ->  Compile the kernel with debug info
```

#### Compile and run
```shell
make -j $(nproc)

# Run on Mac
qemu-system-x86_64 -kernel arch/x86/boot/bzImage -hda /dev/zero -append "root=/dev/zero console=ttyS0" -serial stdio -display none

# Run on ubuntu
qemu-system-x86_64 -no-kvm -kernel arch/x86/boot/bzImage -hda /dev/zero -append "root=/dev/zero console=ttyS0" -serial stdio -display none
```


### NOTE
In this repo, I have already craeted .config file require in "First time setup to build". You can just build and run.