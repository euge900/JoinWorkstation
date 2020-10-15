#First provide new name for this computer.
$h = Read-Host "What is the new name you wish to rename this computer to?"


#Now use the variable $h to rename localhost
Rename-Computer -NewName "$h" -Force


#Here you statically set the DNS address for the server.
Set-DnsClientServerAddress -InterfaceIndex 5 -ServerAddresses 192.168.214.128


#And here you you joing the domain as long as server is reponding to ICMP requests.
if (Test-Connection -ComputerName 192.168.214.128 -Quiet) 
            {
               Add-Computer -DomainName "home.com" -Credential "home\administrator"
                    }
