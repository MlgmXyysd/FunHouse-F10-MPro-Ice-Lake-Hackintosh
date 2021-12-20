# Intel Flash Programming Tool

> Intel CSME System Tools v15.0 r3 Version: 15.0.2.1377

**This tool must be run from a privileged account (administrator/root).**

- Windows i386: [`FPTW.exe`](FPTW.exe)
- Windows amd64: [`FPTW64.exe`](FPTW64.exe)
- Linux amd64: [`FPT`](FPT)
- EFI amd64: [`Fpt.efi`](Fpt.efi)

## Usage

```
FPT [OPTIONS]

-H|?                              Display help screen
-VER                              Displays version information.
-EXP [arg_name]                   Displays example usage of this tool.
-VERBOSE <file>                   Display the debug information of the tool.
-NORESET                          Cancel reset.
-Y                                Do NOT prompt when a warning occurs.
-I                                Displays information about the flash image.
-F <file> [NOVERIFY]              Load binary file into flash.  "NoVerify" skips verify.
-ERASE                            Erase the contents of flash.
-VERIFY <file>                    Compare binary file to flash.
-NOVERIFY                         Disable the automatic verify when flashing a new file to flash.
-D <file>                         Dump flash contents to file or "STDOUT".
-DESC                             Load/verify/dump Descriptor region.
-BIOS                             Load/verify/dump BIOS region.
-ME                               Load/verify/dump Intel ME region.
-GBE                              Load/verify/dump Legacy GbE region.
-PDR                              Load/verify/dump PDR region.
-EC                               Load/verify/dump Embedded Controller region.
-SAVEMAC                          Saves the GbE MAC when GbE is being reflashed.
-SAVESXID                         Saves the GbE SSID and SVID when GbE is being reflashed.
-B                                Check to see if the flash part is erased.
-E                                Do NOT erase area before writing to flash.
-REWRITE                          Rewrite the SPI with file data even if flash is identical.
-ADDRESS|A <address>              Flash address to load/verify/dump file.
-LENGTH|L <length>                Number of bytes to load/verify/dump.
-CVARS                            Displays a list of Manufacturing Line Configurable NVARs supported.
-MASTERACCESSGEN                  Generates a Manufacturing Line Configurable Master Access Input File.
-CFGGEN                           Generates a Manufacturing Line Configurable NVAR Input File.
-U                                Update Manufacturing Line Configurable NVAR.
-CLEAR                            Overwrites a pending NVAR value update request with the file system's current.
-O <file>                         Sets an output file name.
-IN <file>                        Input Manufacturing Line Configurable NVAR/MasterAccess file.
-N <name>                         Name of variable.
-V <value>                        Value for variable.
-CLOSEMNF                         End of Manufacturing. Details on NoReset use -exp option.
-GRESET                           Global reset. Details on NoReset use -exp option.
-PAGE                             Pauses the screen when a page of text is reached.
-R <name>                         Read a variable.
-VARS                             Display supported variables.
-COMMIT                           Commit Manufacturing Line Configurable NVARs.
-DISABLEME                        Disable ME.
-FPFS                             Displays the list of FPFs.
-PROVHDCP <xxkey.bin><xxcert.bin> Provision platform with the key and cert provided.
-READHDCP                         Displays the HDCP Rx provisioning status.
-GETPID [file]                    Retrieve the part id.
-WRITETOKEN <file>                Write the token where the filename is the token name.
-ERASETOKEN                       Delete the token.
-PROVKB <encrypted file>          Provide keybox to firmware.
-COMMITARBSVN                     Send the minimum supported Anti Rollback Security Version (SVN)
```

Copyright (C) 2005 - 2020, Intel Corporation. All rights reserved.
