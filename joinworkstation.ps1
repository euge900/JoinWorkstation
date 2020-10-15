$h = Read-Host "What is the new name you wish to rename this computer to?"

Rename-Computer -NewName "$h" -Force


Set-DnsClientServerAddress -InterfaceIndex 5 -ServerAddresses 192.168.214.128


if (Test-Connection -ComputerName 192.168.214.128 -Quiet) 
            {
               Add-Computer -DomainName "home.com" -Credential "home\administrator"
                    }
