param(
    $ProjectDir,
    $ProjectName,
    $TargetName, 
    $TargetPath, 
    $TargetDir, 
    $TargetFileName,
    $ConfigurationName, 
    $PlatformName )

begin {
    Import-Module BuildLab
}
process {

    if ($PlatformName -eq 'x64') {
        $ModuleFolder = Join-Path (Split-Path $Profile.CurrentUserCurrentHost) 'Modules'
        $OutFolder = Join-Path $ModuleFolder $TargetName

        robocopy /s /z /njh /njs /np /r:1 /w:1 /v /fp $TargetDir $OutFolder

        exit $LASTEXITCODE    
    }
}
end {
    Get-Module BuildLab | Remove-Module
}