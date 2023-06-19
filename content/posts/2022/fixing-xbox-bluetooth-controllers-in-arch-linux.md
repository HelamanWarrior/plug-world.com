---
title: "Fixing Bluetooth Xbox Controllers in Arch Linux"
date: 2022-07-03T11:43:17-06:00
url: /posts/fixing-xbox-bluetooth-controllers-in-arch-linux
tags: ['tutorial', 'linux']
---

Just like many others, I had issues with my Xbox One X/S controllers in Arch Linux.
Here's my quick guide to get everything working.

## Setting up Bluetooth
Since you are on Arch Linux there's a good chance you may not have Bluetooth installed.

```bash
sudo pacman -S bluez bluez-utils
```

Bluez provides the Bluetooth protocol stack.
Bluz-utils provides a command line utility to connect bluetooth devices.

```bash
sudo systemctl enable bluetooth.service
```

Automatically autostart bluetooth as a service when the system boots.

```bash
sudo systemctl start bluetooth.service
```

Startup the bluetooth service.

## Connecting the controller via Bluetooth

Run ``bluetoothctl`` in the command line to startup the bluetooth utility.

Run ``power on`` to turn on the bluetooth controller.

Run ``scan on`` to get a list of each of the devices and their mac addresses.
Your Xbox controller should show up as "Xbox Wireless Controller" then copy the mac address.

Run ``pair yourControllerMacAddress``, this will connect your Bluetooth controller.
If you run into pairing issues, proceed to the next section.

## Controller Bluetooth fix
Is your controller having Bluetooth connection issues?
The solution is to update the firmware in the controller.
1. Jump over to Windows, don't worry this is temporary (you can use a VM too).
2. Download the Xbox Accessories app from the Microsoft Store.
3. Plug in the controller to the pc.
4. Get them updates.

Now that the controller is updated, you can switch back to your Arch Linux install.
You can see that the controller can connect over Bluetooth.

## Fixing controller mappings 

```bash
sudo pacman -S linux-headers
```

Make sure you have linux-headers installed.
They are required for the next step.

```bash
yay -S xpadneo-dkms-git
```

Make sure you have the [yay aur helper](https://www.tecmint.com/install-yay-aur-helper-in-arch-linux-and-manjaro/) installed.
Then proceed to install xpadneo.
It contains the drivers for the Xbox One wireless controllers.
This fixes the strange behavior of the operating system misinterpreting some of the controls on the controller.
For example, my controller had issues with the right joystick and a few face buttons were mixed up.
After installing the drivers those issues were resolved.
