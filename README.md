<h1 align="center">FunHouse F10 MPro (Ice Lake) Hackintosh</h1>
<h3 align="center">Pre-built OpenCore EFI</h3>
<br>

> Theoretically, EFI can be used for FunHouse F10 MPro+ (Ice Lake) Laptop, but without any tests. If someone has tested it, please inform the results in Issues. :)

## Tested on
- Monterey 12.1 `21C52`
- Monterey 12.0.1 `21A559`
- Big Sur 11.6.2 `20G303`
- Big Sur 11.6.1 `20G221`
- Big Sur 11.6 `20G165`

## Device Specifications (Original)

| Specifications      | Details |
| ------------------- | ------- |
| Computer Model      | FunHouse F10 MPro |
| CPU                 | Intel Core i3-1005G1 Mobile `Ice Lake ULT` `FCBGA1526` |
| Integrated Graphics | Intel UHD Graphics GT1 `Ice Lake` |
| Memory              | 8 GB / 16 GB `LPDDR4X @ 3200Mhz` |
| Storage             | 256 GB `NGFF` `SATA` |
| Screen              | BOE NE135FBM-N41, 13.5 in, 2256 x 1504 pixels, 3:2 ratio, 60 Hz `IPS-LCD` |
| Audio               | Realtek USB Audio |
| Nic                 | Realtek RTL8821CE<br/>Wi-Fi `5` `IEEE 802.11 a/g/b/n/ac` `2.4 GHz` `5 GHz` `433 Mbps`<br/>Bluetooth `4.2` |
| Ethernet            | No Ethernet |
| Battery             | 35 Wh (typ) `Li-Po` |
| Charging            | 19 V ⎓ 3 A |
| Camera              | 2 MP, 720 x 480 pixels |
| Dimensions          | 297.3 x 224.6 x 17.5 mm (11.70 x 8.84 x 0.69 in), 1.4 kg |
| Connectors          | 1 x USB Type-C 3.2 Gen2x1<br/>2 x USB Type-A 3.2 Gen1<br/>1 x DC Charger<br/>1 x MicroSD Slot<br/>1 x TRS 3.5 mm<br/>1 x Mini-HDMI |
| Input               | 78 Keys Built-in Keyboard<br/>141 x 96 mm Built-in TouchPad<br/>Built-in Fingerprint Sensor |

## EFI Specifications

> **! Ensure you have filled in the correct serial number before booting**

| Specifications  | Details | Remarks |
| --------------- | ------- | ------- |
| PlatformID | `0x8A510002` | Intel Iris Plus Graphics |
| DeviceID   | `0x8A5D` | |
| SMBIOS     | `MacBookPro16,2` | MacBook Pro 13" 2020 |
| Chassis    | `Mac-5F9802EFE386AA28` | |

## Working

| Feature | Status | Dependency | Remarks |
| ------- | ------ | ---------- | ------- |
| BootLoader | ✅ | `OpenCore` | OpenCore 0.7.6 |
| NVRAM | ✅ | `SSDT-PMC` | |
| Full Integrated Graphics | ✅ | `WhateverGreen.kext` | |
| Video Accleration (QE/CI) | ✅ | `WhateverGreen.kext` | |
| HiDPI | ✅ | | [Script](https://github.com/xzhih/one-key-hidpi) required |
| Brightness Adjustments | ✅ | `WhateverGreen.kext`<br/>`AppleBacklightSmoother.kext` | |
| Sleep | ✅ | `HibernationFixup.kext` | |
| Hibernation | ✅ | `HibernationFixup.kext` | |
| NVMe Drive Battery Management | ✅ | `NVMeFix.kext` | |
| Battery Percentage Indication | ✅ | | Native supported without patching |
| CPU Power Management (SpeedShift) | ✅ | `CPUFriend.kext`<br/>`CPUFriendProvider.kext` |  |
| USB Power Properties | ✅ | `SSDT-EC-USBX-LAPTOP`<br/>`ECEnabler.kext` | |
| Built-in TouchPad | ✅ | `VoodooI2C*.kext` | All gesture avaliable |
| Built-in Keyboard | ✅ | `VoodooPS2*.kext` | |
| Fn Keys | ✅ | `VoodooPS2*.kext` | |
| Internal Mic Audio Recording | ✅ | `AppleALC.kext`<br/>`USBMap.kext` | |
| Internal Speakers Audio Playback | ✅ | `AppleALC.kext`<br/>`USBMap.kext` | |
| Automatic Headphone Output Switching | ✅ | `AppleALC.kext`<br/>`USBMap.kext` | |
| Audio Playback through TSR | ✅ | `AppleALC.kext`<br/>`USBMap.kext` | |
| MicroSD Slot | ✅ | `USBMap.kext` | |
| USB Type-A 3.2 Gen1 Ports | ✅ | `USBMap.kext` | |
| USB Type-C 3.2 Gen2x1 Port | ✅ | `USBMap.kext` | Hotplug fully supported<br/>Can't use Thunderbolt because retimer chip lacks |
| Ethernet | ✅ | `NullEthernet.kext` | Spoofing system only, no networking |
| WiFi | ⚠️ | | You need to install kexts manually:<br/>- Broadcom: [AirPort](https://github.com/acidanthera/AirportBrcmFixup)<br/>- Intel: [AirPort](https://github.com/OpenIntelWireless/itlwm) |
| Bluetooth | ⚠️ | `BlueToolFixup.kext` | - Broadcom: [Bluetooth](https://github.com/acidanthera/BrcmPatchRAM)<br/>- Intel: [Bluetooth](https://github.com/OpenIntelWireless/IntelBluetoothFirmware)<br/>Do NOT enable any Bluetooth injector in Monterey! |

## Not working

| Feature | Status | Dependency | Remarks |
| ------- | ------ | ---------- | ------- |
| Fingerprint Sensor | ❌ | `NoTouchID.kext` | TouchID is not supported in Hackintosh |
| Type-C Video Output | ❌ | | New IGPU architecture outputs video through Thunderbolt protocol. |
| Mini-HDMI Port | ❌ | | `[IGFB][LOG  ][HOT_PLUG  ] Returning as HPD is low` |
| Realtek RTL8821CE | ❌ | | Realtek nic will never be driven.<br/>Suggest to replace it with:<br/>- Broadcom `BCM943602`/`BCM94350ZAE`/`BCM94360Z3`/`BCM94360Z4`<br/>- Intel `AX200`/`AX201`/`AX210`/`AX211`/`AX411` |

## BIOS Configuration

> BIOS Version 2.20.1275
```
├─> Advanced
│  ├─> CPU Configuration
│  │  ├─> Software Guard Extensions (SGX) -> `Disabled`
│  │  └─> Intel (VMX) Virtualization Technology -> `Enabled`
│  ├─> Power & Performance
│  │  └─> CPU - Power Management Control
│  │     └─> CPU Lock Configuration
│  │        ├─> CFG Lock -> `Disabled`
│  │        └─> Overclocking Lock -> `Disabled`
│  ├─> Platform Settings
│  │  └─> Charging Method -> `Fast Charging`
│  └─> CSM Configuration
│     └─> CSM Support -> `Disabled`
├─> Chipset
│  ├─> System Agent (SA) Configuration
│  │  ├─> Graphics Configuration
│  │  │  └─> DVMT Pre-Allocated -> `160M`
│  │  ├─> VT-d -> `Disabled`
│  │  └─> Above 4GB MMIO BIOS assignment ->`Enabled`
│  └─> PCH-IO Configuration
│     └─> Security Configuration
│        └─> RTC Memory Lock -> `Disabled`
└─> Boot
   └─> Fast Boot -> `Disabled`
```

## Donation

Donating to this project is optional. But feel free to buy me a coffee if you appreciate my works.

[爱发电](https://afdian.net/@MlgmXyysd) | [PayPal](https://paypal.me/MlgmXyysd) | [Patreon](https://www.patreon.com/MlgmXyysd)

## Disclaimer

Your warranty may be void. Please do some research if you have any concerns before replacing your EFI with mine. I am not responsible for any loss, including but not limited to Kernel Panic, device fail to boot or can not function normally, storage damage or data loss, atomic bombing, World War III, The CK-Class Restructuring Scenario that SCP Foundation can not prevent, and so on.

## Maintainer 

**FunHouse F10 MPro (Ice Lake) Hackintosh** © [MlgmXyysd](https://github.com/MlgmXyysd), no warranty for this EFI.

Authored and maintained by MlgmXyysd with help from friends in the credits [list](#Credits).

## Credits

> In no particular order
- [Apple](https://www.apple.com/) for macOS
- [Acidanthera](https://github.com/acidanthera/) for OpenCore & kexts
- [RehabMan](https://github.com/rehabman/) for kexts
- [VoodooI2C](https://github.com/VoodooI2C/) for kexts
- [IsaacChen](https://github.com/TingyiChen/) for guides & USB Mapping
- [Sukka](https://github.com/SukkaW/) for guides & readme template
- [daliansky](https://github.com/daliansky/) for guides
- [Bao-Hiep Le](https://github.com/hieplpvip/) for kexts
