function New-ADApp {
    New-UDApp -Content {
        "Hello, World!"
    }
}

function Start-Endpoint {
    "Nice"
}

function Show-HelloWorld {
    param($Nice)
    "Hello, World!"
}


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