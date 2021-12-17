# Hackintosh-FunHouse-F10-MPro-Ice-Lake
Hackintosh EFI for FunHouse F10 MPro (Ice Lake) Laptop

## Device Specifications

Component  | Specifications
----------:|:----------
Name       | FunHouse F10 MPro
CPU        | Intel Core i3-1005G1 Mobile `Ice Lake ULT` `FCBGA1526`
GPU        | Intel UHD Graphics GT1 `Ice Lake`
Memory     | 8 GB / 16 GB `LPDDR4x @ 3200Mhz`
Storage    | 256 GB `NGFF` `SATA`
Screen     | BOE NE135FBM-N41, 13.5 in, 2256 x 1504 pixels, 3:2 ratio, 60 Hz `IPS-LCD`
Audio      | Realtek USB Audio
Nic        | Realtek RTL8821CE
Wi-Fi      | Wi-Fi `5` `IEEE 802.11 a/g/b/n/ac` `2.4 GHz` `5 GHz` `433 Mbps`
Bluetooth  | Bluetooth `4.2`
Battery    | 35 Wh (typ) `Li-Po`
Charging   | 19 V ⎓ 3 A
Camera     | 2 MP, 720 x 480 pixels
Dimensions | 297.3 x 224.6 x 17.5 mm (11.70 x 8.84 x 0.69 in), 1.4 kg
Connectors | 1 x USB Type-C 3.2 Gen2x1<br/>2 x Type-A USB 3.2 Gen1<br/>1 x DC Charger<br/>1 x MicroSD<br/>1 x 3.5 mm TRS<br/>1 x Mini HDMI
Input      | 78 Keys Built-in Keyboard<br/>141 x 96 mm Built-in Touchpad<br/>Built-in Fingerprint Sensor

## EFI Specifications

Component  | Specifications
----------:|:----------
PlatformID | 0x8A510002 `Intel Iris Plus Graphics`
SMBIOS     | MacBookPro16,2 `MacBook Pro 13" 2020`
Chassis    | Mac-5F9802EFE386AA28
BootLoader | OpenCore 0.7.6

## Works
- [x] GPU & Video Acceleration
- [x] USB/MicroSD/TSR Ports
- [x] Battery
- [x] Audio Mic
- [x] Internal Speakers
- [x] Sleep & Hibernation
- [x] HiDPI ([Script](https://github.com/xzhih/one-key-hidpi) required)
- [x] Built-in Keyboard & Trackpad
- [x] Volume & Power & Brightness Keys
- [x] NVRAM
- [x] NVMe SSD

## Not work
- [ ] Type-C Video Output
- [ ] Mini-HDMI Port
- [ ] Realtek Nic

## Notes
- Pre-installed Realtek wireless nic cannot be driven. It is recommended to replace it with Broadcom BCM943602/BCM94350ZAE (Dell Wireless 1830/1820A) or Intel AX200/AX201/AX210/AX211/AX411.
- Type-C port can't use the Thunderbolt protocol because retimer chip lacks.
- EFI doesn't contain any Airport or Bluetooth kexts. Manual install: [Broadcom Bluetooth](https://github.com/acidanthera/BrcmPatchRAM) [Broadcom Airport](https://github.com/acidanthera/AirportBrcmFixup) [Intel Bluetooth](https://github.com/OpenIntelWireless/IntelBluetoothFirmware) [Intel Airport](https://github.com/OpenIntelWireless/itlwm)
- Ensure you have filled in the correct serial number before booting.
- Theoretically, EFI can be used for FunHouse F10 MPro+ (Ice Lake) Laptop, but without any tests.
- Tested on macOS Big Sur 11.6 20G165.
- There is no warranty for this EFI.

## Credits
- [MlgmXyysd](https://github.com/MlgmXyysd) for EFI
- [Apple](https://www.apple.com/) for macOS
- [Acidanthera](https://github.com/acidanthera) for OpenCore & Kexts
- [VoodooI2C](https://github.com/VoodooI2C) for Kexts
- [IsaacChen](https://github.com/TingyiChen) for guides & USB Mapping