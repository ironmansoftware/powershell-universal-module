# PowerShell Universal Module 

An example module used in PowerShell Universal v4 to define resources.

## `.universal` Folder

The `.universal` folder contains scripts that will define resources within PowerShell Universal. These resources will be read-only.

## Resource Definitions

In order to properly load resources from a module, resources need to use the `-Module` and `-Command` parameters rather than any path-specific parameters. 

```powershell
New-PSUEndpoint -Url "/start" -Method @('GET') -Module "PSUModule" -Command "Start-Endpoint"
```

## App Components

App components can be defined in modules and then used within apps. To support the App designer, you need to include the `Component` attribute with a name and description for your component.

```powershell
function New-UDRedbox {
    [Component("Redbox", "A textbox with a red border.")]
    param(
        [Parameter()]
        [string]$Id
    )

    New-UDStyle -style "border: 2px solid red" -Content {
        New-UDTextbox -Id $Id
    }
}
```