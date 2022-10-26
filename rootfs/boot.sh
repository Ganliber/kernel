qemu-system-x86_64 \
    -m 128M \
    -kernel ./bzImage \
    -initrd  ./rootfs.cpio \
    -monitor /dev/null \
    -cpu kvm64,+smep \
    -append "console=ttyS0 loglevel=3 quiet nokaslr" \
    -nographic \
    -s
