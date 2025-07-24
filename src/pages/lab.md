---
title: Office, Hardware, and Software
eleventyNavigation:
    key: Lab
    hide: false
    order: 10
---

Inspiration for the content of this page comes from Mike Sass at [Shellsharks](https://shellsharks.com/uses).

# Desk Setup

![Home Office Desktop Setup](/assets/img/desktop.png)
*Office setup in February 2024*

- IKEA Trotten sit/stand desk
- Monitor Dell U3818DW*
- Ergotron HX monitor arm
- Dell XPS 13 Plus
- Yubico Yubikey 5C Nano
- HumanCentric vertical laptop stand
- Amazon Basics Lightbar
- Kantu YU4
- Logitech G305 mouse
- GMMK Pro keyboard
- [PinePower 120W](https://pine64.com/product/pinepower-120w-desktop-power-supply-us-version/)

\* Don't buy this monitor if you want USB-C power delivery with a modern Macbook -- the implementation is borked

# Laptop Setup

I snagged the XPS 13 Plus refurbished from Micro Center last year (2023) in preparation for the [SANS SEC617 Wireless Penetration Testing and Ethical Hacking](https://www.sans.org/cyber-security-courses/wireless-penetration-testing-ethical-hacking/) course. I used Ubuntu LTS (22.04) as the host during the course but transitioned to Debian stable shortly after. The laptop has been rock solid on both, with zero complaints except for the touchbar (ended up remapping ESC to CAPSLOCK). I replaced the hard drive with a Samsung 980 professional, re-pasted with [Thermal Grizzly Kryonaut](https://www.thermal-grizzly.com/en/kryonaut/s-tg-k-001-rs), and added a cheap matte screen protector.

* KVM/QEMU virtualization
* SwayWM
* TMUX
* ZSH
* [Spaceship prompt](https://spaceship-prompt.sh/)

If you're interested in using my configuration files (dotfiles) they're available on my [GitHub dotfiles repository](https://github.com/t3rp/mydotfiles).

# Lab Configuration

My home laboratory contains two quiet consumer desktops. The Fractal Meshify-C (top) runs [Proxmox](https://www.proxmox.com/en/) and the Rosewill 4U (bottom) runs [TrueNAS SCALE](https://www.truenas.com/truenas-scale/). A Cisco SG350 and [pfSense](https://www.pfsense.org/) are the network's backbone. Lab networking goes through a virtualized [OPNsense](https://opnsense.org/) machine. [PiKVM](https://pikvm.org/) for IPMI.

![Home Office Hacklab Rack Setup](/assets/img/lab_rack.png)
*12U Startech rack with two computers and PDU, networking on the back of the rack*

* Proxmox: 12600K, 32GB, 1TB+2TB NVME, 1080TI
* TrueNAS: 8700K, 64GB, 1TB+500GB NVME, 4x2TB RAIDZ1
* Wireless by TPLINK EAP660
* Cisco SG350 switch
