function Connect-CertificationAuthority {
<#
.ExternalHelp PSPKI.Help.xml
#>
[OutputType('PKI.CertificateServices.CertificateAuthority[]')]
[CmdletBinding()]
	param(
		[Parameter(ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
		[string[]]$ComputerName = $Env:COMPUTERNAME
	)
	process {
		foreach ($CName in $ComputerName) {
			New-Object PKI.CertificateServices.CertificateAuthority $CName
		}
	}
}