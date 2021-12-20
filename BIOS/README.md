# BIOS Customization

**WARNING: Modifying BIOS firmware is very dangerous, which may void warranty or brick your device. Ensure you have enough rescue knowledge. You must backup before any operation. I am not responsible for any problems caused by following this tutorial.**

## Recommended Configuration

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

## BIOS Firmware

### Before starting

- System Requirement: Windows `x86` `x64` / Linux `x64` / UEFI Shell `x64`
- Privileged account (administrator/root)
- [Intel Flash Programming Tool](FlashProgrammingTool)

### Dump / Backup

`FPT -D <FirmwareFile>`

- Keep `<FirmwareFile>` properly

### Flash / Restore

`FPT -F <FirmwareFile> -BIOS`

## Splash Logo Customization

### Before starting

- System Requirement: Windows `x86` `x64`
- You have [dumped Firmware](#dump--backup) as a file
- [AMI Aptio Change Logo Utility](ChangeLogo)

### Image Requirement

- Format: Bitmap Image `*.BMP`
- Maximum size: 800*600 (*It will be displayed horizontally centered at boot*)

### Extract Splash from Firmware

`ChangeLogo /i <inFirmwareFile> /e <SplashFile>`

### Replace Splash in Firmware

`ChangeLogo /i <inFirmwareFile> /o <outFirmwareFile> /r <SplashFile>`

- Then you can [flash](#flash--restore) `<outFirmwareFile>` to BIOS.
- I made [Apple splash](AppleSplash), you can use it directly. It can make Hackintosh look more like Macintosh :)
