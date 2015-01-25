﻿<#
.Synopsis
   Short description
.DESCRIPTION
   Long description
.EXAMPLE
   Example of how to use this cmdlet
.EXAMPLE
   Another example of how to use this cmdlet
#>
function New-OctopusConnection
{
    Begin
    {
        Add-Type -Path "$PSScriptRoot\..\bin\Newtonsoft.Json.dll"
        Add-Type -Path "$PSScriptRoot\..\bin\Octopus.Client.dll"
        Add-Type -Path "$PSScriptRoot\..\bin\Octopus.Platform.dll"
    }
    Process
    {
                
        $properties = [ordered]@{
            endpoint = new-object Octopus.Client.OctopusServerEndpoint "$($Env:OctopusURI)","$($env:OctopusAPIKey)"
            repository = new-object Octopus.Client.OctopusRepository $endpoint     
        }

        $output = New-Object psobject -Property $properties

    }
    End
    {
        return $output

    }
}