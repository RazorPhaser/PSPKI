function Get-CryptographicServiceProvider {
<#
.ExternalHelp PSPKI.Help.xml
#>
[OutputType('SysadminsLV.PKI.Cryptography.CspProviderInfoCollection')]
[CmdletBinding()]
    param(
        [string]$Name
    )
    [SysadminsLV.PKI.Cryptography.CspProviderInfoCollection]::GetProviderInfo($Name)
}