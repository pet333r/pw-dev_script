netsh advfirewall firewall add rule name="DCS UFC 25070" protocol=UDP dir=in localport=25070 action=allow
netsh advfirewall firewall add rule name="DCS Util 25071" protocol=UDP dir=in localport=25071 action=allow
pause