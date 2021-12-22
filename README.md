<div align="center">
<img src=".github/banner.png" style="width: 100%; max-width: 600px;">
</div>
<h1 align="center">FunHouse F10 MPro (Ice Lake) Hackintosh</h1>
<h3 align="center">Pre-built out-of-the-box OpenCore EFI</h3>
<br>

## Device Specifications (Original)

| Specifications      | Details |
| ------------------: | :------ |
| Computer Model | FunHouse F10 MPro<br/>FunHouse F10 MPro+ |
| Processor | Ice Lake `FCBGA1526` |
| CPU | Intel Core i3-1005G1 Mobile<br/>Intel Core i7-1065G7 Mobile |
| Integrated Graphics | Intel UHD Graphics G1<br/>Intel Iris Plus Graphics G7 |
| Memory | 8 GB / 16 GB `LPDDR4X @ 3200Mhz` |
| Storage | 256 GB `NGFF` `SATA` |
| Screen | BOE NE135FBM-N41, 13.5 in, 2256 x 1504 pixels, 3:2 ratio, 60 Hz `IPS-LCD` |
| Audio | Realtek USB Audio |
| Wireless | Realtek RTL8821CE<br/>Wi-Fi `5` `IEEE 802.11 a/g/b/n/ac` `2.4 GHz` `5 GHz` `433 Mbps`<br/>Bluetooth `4.2` |
| Ethernet | No Ethernet |
| Battery | 35 Wh (typ) `Li-Po` |
| Charging | 19 V ⎓ 3 A `DC` `PD` |
| Camera | 2 MP, 720 x 480 pixels |
| Dimensions | 297.3 x 224.6 x 17.5 mm (11.70 x 8.84 x 0.69 in), 1.4 kg |
| Connectors | 1 x USB Type-C 3.2 Gen2x1<br/>2 x USB Type-A 3.2 Gen1<br/>1 x DC Charger<br/>1 x MicroSD Slot<br/>1 x TRS 3.5 mm<br/>1 x Mini-HDMI |
| Input | 78 Keys Built-in Keyboard (Fn)<br/>141 x 96 mm Built-in TouchPad<br/>Built-in Fingerprint Sensor |

## EFI Specifications

> **! Ensure you have filled in the correct serial number before booting!**

> Nic (Wi-Fi/Bluetooth) kexts are not enabled by default, enable the manually depending on your hardware and OS

> **! Do NOT try to load any Bluetooth injector in macOS Monterey!**

| Specifications  | Details | Remarks |
| --------------: | :-----: | :------ |
| PlatformID | `0x8A510002` | Intel Iris Plus Graphics |
| DeviceID | `0x8A5D` | |
| SMBIOS | `MacBookPro16,2` | MacBook Pro 13" 2020 |
| Chassis | `Mac-5F9802EFE386AA28` | |

## Supported Devices

| Model | Processor | Graphics | Type | Status | Remarks |
| ----: | :-------: | :------: | :--: | :----: | :------ |
| FunHouse F10 MPro | Intel Core i3-10110U Mobile | Intel UHD Graphics 630 | Comet Lake | ❌ | Not yet supported |
| FunHouse F10 MPro | Intel Core i3-1005G1 Mobile | Intel UHD Graphics G1 | Ice Lake | ✅ | |
| FunHouse F10 MPro+ | Intel Core i7-1065G7 Mobile | Intel Iris Plus Graphics G7 | Ice Lake | ⚠️ | Need more test |

## Working

| Feature | Status | Sub-objects | Dependency | Remarks |
| ------: | :----: | :---------- | :--------: | :------ |
| BootLoader | ✅ | `Boot`✅ | `OpenCore` | OpenCore 0.7.6 |
| NVRAM | ✅ | | `SSDT-PMC` | |
| Integrated Graphics | ✅ | `Display`✅<br/>`Accleration QE/CI`✅ | `WhateverGreen.kext` | |
| HiDPI | ✅ | | | [Script](https://github.com/xzhih/one-key-hidpi) required<br/>If screen flashes, close the laptop cover and reopen it |
| Brightness Adjustments | ✅ | | `SSDT-PNLF-CFL`<br/>`WhateverGreen.kext`<br/>`AppleBacklightSmoother.kext` | |
| Sleep | ✅ | `S3`✅ | `HibernationFixup.kext` | |
| Hibernation | ✅ | `Mode 3`✅<br/>`Mode 25`✅ | `HibernationFixup.kext` | |
| NVMe Drive Battery Management | ✅ | | `NVMeFix.kext` | |
| Battery Indication | ✅ | `Percentage`✅<br/>`Charging`✅ | | Native supported |
| CPU Turbo Boost | ✅ | | | Native supported |
| USB Power Properties | ✅ | | `SSDT-EC-USBX-LAPTOP`<br/>`ECEnabler.kext` | |
| Built-in TouchPad | ✅ | `Track`✅<br/>`Touch`✅<br/>`Guesture`✅ | `VoodooI2C*.kext` | All gesture avaliable |
| Built-in Keyboard | ✅ | `Normal Keys`✅<br/>`Volume Keys`✅<br/>`Brightness Keys`✅<br/>`Fn Keys`✅ | `VoodooPS2*.kext` | |
| Input over Bluetooth | ✅ | `Mouse`✅<br/>`Keyboard`✅<br/>`Touchpad`✅ | Bluetooth | |
| Mic Audio Recording | ✅ | | `AppleALC.kext`<br/>`USBMap.kext` | |
| Speakers Audio Playback  | ✅ | | `AppleALC.kext`<br/>`USBMap.kext` | |
| Automatic Headphone Output Switching | ✅ | | `AppleALC.kext`<br/>`USBMap.kext` | |
| Audio via TSR | ✅ | `Input`✅<br/>`Output`✅ | `AppleALC.kext`<br/>`USBMap.kext` | |
| Audio over Bluetooth | ✅ | `Input`✅<br/>`Output`✅ | Bluetooth | |
| MicroSD Slot | ✅ | `Hotplug`✅ | `USBMap.kext` | |
| USB Type-A Ports | ✅ | `USB 3.2`✅<br/>`USB 2.0`✅<br/>`Hub`✅ | `USBMap.kext` | |
| USB Type-C Port | ⚠️ | `USB 3.2`✅<br/>`USB 2.0`✅<br/>`PD Charging`✅<br/>`Hub`✅<br/>`Hotplug`✅<br/>`Display`❌<br/>`Thunderbolt`❌ | `USBMap.kext` | Hotplug fully supported<br/>GT1 iGPU outputs via Thunderbolt, but Thunderbolt Retimer lacks |
| Ethernet | ✅ | `Ethernet Docking`✅<br/>`Ethernet Spoofing`✅ | `SSDT-ETHERNET`<br/>`NullEthernet.kext` | Disabled by default, you can manually enable them to spoof system if you need to |
| WiFi (Intel) | ⚠️ | `WPA3`⚠️ | `AirportItlwm-*.kext` | WPA3 will have a very slow speed |
| WiFi (Broadcom) | ✅ | `WPA3`✅ | `AirportBrcmFixup.kext`<br/>`AirportBrcm*_Injector.kext` | |
| Bluetooth (Intel) | ⚠️ | `Bluetooth`✅<br/>`AirDrop(Sending)`❌<br/>`AirDrop(Receiving)`❌ | `BlueToolFixup.kext`<br/>`IntelBluetoothFirmware.kext`<br/>`IntelBluetoothInjector.kext` | |
| Bluetooth (Broadcom) | ⚠️ | `Bluetooth`✅<br/>`AirDrop(Sending)`⚠️<br/>`AirDrop(Receiving)`✅ | `BlueToolFixup.kext`<br/>`BrcmPatchRAM3.kext`<br/>`BrcmFirmwareData.kext`<br/>`BrcmBluetoothInjector.kext` | AirDrop(Sending) not working properly on Monterey |

## Not working

| Feature | Status | Sub-objects | Dependency | Remarks |
| ------: | :----: | :---------- | :--------: | :------ |
| Fingerprint Sensor | ❌ | | `NoTouchID.kext` | TouchID is not supported in Hackintosh |
| Mini-HDMI Port | ❌ | `Video`❌<br/>`Audio`❌ | | `[IGFB][LOG][HOT_PLUG] Returning as HPD is low` |
| Realtek RTL8821CE | ❌ | `Bluetooth`❌<br/>`Wi-Fi`❌ | | Realtek wireless nic is not supported in Hackintosh<br/>Suggest to replace it with Broadcom or Intel based:<br/>`BCM943602`/`BCM94350ZAE`/`BCM94360Z3`/`BCM94360Z4`<br/>`AX200`/`AX201`/`AX210`/`AX211`/`AX411` |

## Firmware

- [BIOS Customization - BIOS Configuration](BIOS#recommended-configuration)
- [BIOS Customization - Splash Logo Customization](BIOS#splash-logo-customization)
- [BIOS Customization - LCD DC Firmware](BIOS#lcd-firmware)

## Tested on
- Monterey 12.1 `21C52`
- Monterey 12.0.1 `21A559`
- Big Sur 11.6.2 `20G303`
- Big Sur 11.6.1 `20G221`
- Big Sur 11.6 `20G165`

## Donation

Donating to this project is optional. But feel free to buy me a coffee if you appreciate my works.

[爱发电](https://afdian.net/@MlgmXyysd) | [PayPal](https://paypal.me/MlgmXyysd) | [Patreon](https://www.patreon.com/MlgmXyysd)

## Disclaimer

Your warranty may be void. Please do some research if you have any concerns before replacing your EFI with mine. I am not responsible for any loss, including but not limited to Kernel Panic, device fail to boot or can not function normally, storage damage or data loss, atomic bombing, World War III, The CK-Class Restructuring Scenario that SCP Foundation can not prevent, and so on.

## Maintainer 

**FunHouse F10 MPro (Ice Lake) Hackintosh** © [MlgmXyysd](https://github.com/MlgmXyysd), no warranty for this EFI.

Authored and maintained by MlgmXyysd with help from friends in the credits [list](#Credits).

## EFI Credits

> In no particular order
- [Apple](https://www.apple.com/) for macOS
- [Acidanthera](https://github.com/acidanthera/) for OpenCore & kexts
- [VoodooI2C](https://github.com/VoodooI2C/) for kexts
- [OpenIntelWireless](https://github.com/OpenIntelWireless/itlwm) for kexts
- [RehabMan](https://github.com/rehabman/) for kexts
- [IsaacChen](https://github.com/TingyiChen/) for guides & USB Mapping
- [Sukka](https://github.com/SukkaW/) for guides & readme template
- [daliansky](https://github.com/daliansky/) for guides
- [Bao-Hiep Le](https://github.com/hieplpvip/) for kexts
