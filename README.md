# tools

## Bugs

while running run.ps1, I get the following error:

```pwsh
oh-my-posh : The term 'oh-my-posh' is not recognized as the name of a cmdlet, function, script file, or operable
program. Check the spelling of the name, or if a path was included, verify that the path is correct and try again.
At C:\Users\WDAGUtilityAccount\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1:1 char:1
+ oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\takuya.omp.json" ...
+ ~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (oh-my-posh:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException

sudo : The term 'sudo' is not recognized as the name of a cmdlet, function, script file, or operable program. Check
the spelling of the name, or if a path was included, verify that the path is correct and try again.
At line:1 char:1
+ sudo oh-my-posh font install Meslo
+ ~~~~
    + CategoryInfo          : ObjectNotFound: (sudo:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException
```

### Need to fix the following:

1. ohMyPosh.ps1 on the first time run, it should install oh-my-posh and MesloLGS NF font
