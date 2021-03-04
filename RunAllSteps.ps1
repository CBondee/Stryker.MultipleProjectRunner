# this will allow the script to be executed from another location
[CmdletBinding()]
Param
(
    [Parameter(Mandatory = $true, Position = 0)]
    [string] $startdir,
    [Parameter(Mandatory = $true, Position = 1)]
    [string] $configurationfile
)


# import the script with all the code
. '.\Run Stryker.ps1'

# save where we started
# $startDir = Get-Location
Write-Host "Starting at: " $startDir

RunEverything $startDir $configurationfile
