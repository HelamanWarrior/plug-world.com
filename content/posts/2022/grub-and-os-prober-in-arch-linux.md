---
title: "Grub and OS Prober in Arch Linux"
date: 2022-07-05T21:45:46-06:00
url: /posts/grub-and-os-prober-in-arch-linux
tags: ['tutorial', 'linux']
---
This guide is tailored to people that are dualbooting Linux and Windows.
The exact same steps can accomplish adding another Linux OS to the bootloader.

## Prerequisites
```bash
sudo pacman -S grub efibootmgr os-prober ntfs-3g
```

## Mounting Windows Drive
```bash
sudo mount -t ntfs-3g /dev/sda2 /mnt
```
**Don't just copy this command.**
*Make sure you use the correct drive.*
You can find each drive by name when using ``lsblk``.
Usually you want to mount the smallest partition.
That will contain the boot manager for that specific operating system.
For Windows mine was the second partition, but that may change, so just check yours just in case.

## Enable OS Prober
Edit ``/etc/default/grub`` and uncomment:
```bash
GRUB_DISABLE_OS_PROBER=false
```
This allows OS Prober to scan for other operating systems and add them to the bootloader.

## Making Grub the bootloader
```bash
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

Generate grubs config, OS Prober should do it's thing and add all detected operating systems to Grub.
If it misses one, make sure you have it mounted.

```bash
sudo grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=grub --recheck
```
This makes Grub the bootloader.
