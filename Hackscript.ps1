echo "Hackscript"
$command = Read-Host -Prompt "<H> : > "

if ($command -eq "hack_wifi_psw()"){
    $name = Read-Host -Prompt "Enter Connection Name - "
    echo `n
    netsh wlan show profile $name key=clear | findstr "Key Content" 
    echo `n
    Read-Host 
}

if ($command -eq "hack_help()"){
    echo "1. hack_wifi_psw()`n2. hack_help()"
    echo `n
    Read-Host
}
