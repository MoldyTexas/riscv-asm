#!/bin/bash

# Script to start RISC-V Ubuntu server

echo "Running QEMU-RV64 server"

qemu-system-riscv64 -machine virt -nographic -m 2048 -smp 4 -bios /usr/lib/riscv64-linux-gnu/opensbi/generic/fw_jump.bin -kernel /usr/lib/u-boot/qemu-riscv64_smode/uboot.elf -device virtio-net-device,netdev=eth0 -netdev user,id=eth0 -device virtio-rng-pci -drive file=/home/moldytexas/riscv64-linux/qemu-riscv-setup/ubuntu-22.04.3-preinstalled-server-riscv64+unmatched.img,format=raw,if=virtio

