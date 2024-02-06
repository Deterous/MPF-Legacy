While it is suggested that users on legacy version of Windows upgrade their operating system, there may be cases where this is not possible and this should not be a barrier to media preservation. It should be possible to get MPF working on [Windows 7 SP1 (64bit)](#mpf-on-windows-7-sp1-(64bit)) by following the instructions below. For older Windows, this repo provides builds that should work with your OS. Let me know by [creating an issue](https://github.com/Deterous/MPF-Legacy/issues/new) if you can't get MPF working on your version of Windows, or if another build would be useful.

## MPF on Windows 7 SP1 (64bit)
[MPF](https://github.com/SabreTools/MPF) releases are currently built as self-contained .NET Core 6 and 8 and do not [officially support](https://github.com/dotnet/core/blob/main/release-notes/8.0/supported-os.md) Windows versions older than Windows 10, however they have been tested working on Windows 7 SP1 (64bit). To get the MPF builds working on Windows 7 SP1 (64bit), you'll need to disable strong name validation due to `Microsoft.Management.Infrastructure` being unsigned. To do this, add the following registry keys:
```
	[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\StrongName\Verification\*,31bf3856ad364e35]
	[HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\StrongName\Verification\*,31bf3856ad364e35]
```

## MPF Legacy Builds

This repo [provides builds](https://github.com/Deterous/MPF-Legacy/releases) from older .NET Frameworks to support legacy Windows operating systems, including 32bit Windows. Refer to the following table for what build to use for your system, and the .NET Framework dependency to ensure you have installed to get MPF working.
| Operating System              | Build to use                  | .NET Framework Requirement                                                               |
| ----------------------------- | ----------------------------- | ---------------------------------------------------------------------------------------- |
| Windows XP SP3[^1] (32bit)    | MPF-Legacy_*_net40_win32.zip  | [.NET Framework 4.0](https://dotnet.microsoft.com/en-us/download/dotnet-framework/net40) |
| Windows XP SP3[^1] (64bit)    | MPF-Legacy_*_net40_win64.zip  | [.NET Framework 4.0](https://dotnet.microsoft.com/en-us/download/dotnet-framework/net40) |
| Windows Vista SP2[^2] (32bit) | MPF-Legacy_*_net40_win32.zip  | [.NET Framework 4.0](https://dotnet.microsoft.com/en-us/download/dotnet-framework/net40) |
| Windows Vista SP2[^2] (64bit) | MPF-Legacy_*_net40_win64.zip  | [.NET Framework 4.0](https://dotnet.microsoft.com/en-us/download/dotnet-framework/net40) |
| Windows 7 SP1[^3] (32bit)     | MPF-Legacy_*_net48_win32.zip  | [.NET Framework 4.8](https://dotnet.microsoft.com/en-us/download/dotnet-framework/net48) |
| Windows 7 SP1[^3] (64bit)     | MPF-Legacy_*_net48_win64.zip  | [.NET Framework 4.8](https://dotnet.microsoft.com/en-us/download/dotnet-framework/net48) |
| Windows 8.1[^4] (32bit)       | MPF-Legacy_*_net48_win32.zip  | [.NET Framework 4.8](https://dotnet.microsoft.com/en-us/download/dotnet-framework/net48) |
| Windows 8.1[^4] (64bit)       | MPF-Legacy_*_net48_win64.zip  | [.NET Framework 4.8](https://dotnet.microsoft.com/en-us/download/dotnet-framework/net48) |

[^1]: Windows XP without SP3 may not work with net40 builds, please upgrade to SP3
[^2]: Windows Vista without SP2 should still work with net40 builds
[^3]: Windows 7 without SP1 may not work with net48 builds, please upgrade to SP1 or use the net40 builds instead
[^4]: Windows 8 (without 8.1) may not work with net48 builds, please upgrade to 8.1 or use the net40 builds instead
