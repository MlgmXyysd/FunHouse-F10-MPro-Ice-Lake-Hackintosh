# AMI Aptio Change Logo Utility

> Version: 5.00.0002

- Windows i386: [`ChangeLogo.exe`](ChangeLogo.exe)

## Usage
```
Extract:  ChangeLogo /i <inROMFile> /e <LogoFile> [/s] [/f]
List:     ChangeLogo /i <inROMFile> /l [/m]
Add:      ChangeLogo /i <inROMFile> /o <outROMFile> /a <LogoFile> [/s] [/f] [/m<number>]
Replace:  ChangeLogo /i <inROMFile> /o <outROMFile> /r <LogoFile> [/s] [/f] [/m<number>]
Delete:   ChangeLogo /i <inROMFile> /o <outROMFile> /d [/s] [/f]
Test Fit: ChangeLogo /i <inROMFile> /t <LogoFile> [/s]

   /s indicates small logo
   /f Replace: force replacement even if image type mismatches
   /f Others: force file over write
   /m<number> where <number> is 1 - N indicates logo in ROM image (Multi Logo support)
   Add /Cap to ignore file suffix and load as capsule
```

Copyright (C) 2013 American Megatrends, Inc.
