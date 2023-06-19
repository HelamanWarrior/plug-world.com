---
title: "Ubuntu ACPI Errors Prevent Boot Fix"
date: 2022-12-06T15:26:18-07:00
url: /posts/acpi-errors-prevent-boot
---

After installing Kubuntu on my laptop I ran into a ton of ACPI errors upon boot.
Kubuntu managed to install most of the Nvidia packages related to xorg and optimus.
But it failed to install the main nvidia-driver component.
This leads to ACPI errors and a unbootable OS.

## Solution:
TLDR: Launch into recovery mode, install Nvidia gpu drivers.

### Launching in recovery mode:

1. In grub select Advanced Ubuntu options.
2. Launch the latest Ubuntu recovery image.
3. Then proceed to launch the OS.

You will find that Ubuntu launches like normal without ACPI errors.
This is only temporary, you will find that screen brightness and many other hardware related functions won't work.

### Installing Nvidia drivers

Launch the terminal.

```bash
ubuntu-drivers devices
```

Then install the recommended nonfree Nvidia driver.

```sudo apt-get install nvidia-driver-XXX```
