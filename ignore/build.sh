gcc -static hello.c -o init
echo init | cpio -o -H newc | gzip > test.cpio.gz

