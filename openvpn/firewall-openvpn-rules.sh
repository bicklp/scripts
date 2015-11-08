#firewall-openvpn-rules.sh
#!/bin/sh
#
#wlan0 is interface name
#tun0 is OpenVPN Server
#tun1 is PIA
#
iptables -t nat -A POSTROUTING -s 10.9.0.0/24 -o wlan0 -j SNAT --to-source 192.168.1.18 #[Local IP]
iptables -t nat -A POSTROUTING -s 10.9.0.0/24 -o tun1 -j MASQUERADE
#remove the square brackets from round the interface name
