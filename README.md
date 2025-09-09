# Simple AutoScript SSH-WS
<p align="center">
  <a href="https://github.com/AxFrds/ssh-ws" target="_blank" rel="noopener noreferrer" >
    <img src="https://raw.githubusercontent.com/AxFrds/ssh-ws/master/screenshot/IMG_20250909_224543.jpg" alt="SSH-WS screenshot" width="600" height="auto">
  </a>
</p>

### Installation
**First time to install**
```
apt-get update -y && apt-get upgrade -y && apt-get install wget -y
```

**Install script**
```
wget -q https://raw.githubusercontent.com/AxFrds/ssh-ws/master/setup && chmod +x setup && ./setup && rm -f setup
```

### Usage
- sshmenu: Show panel menu

### Support OS
- Debian 11 or higher
- Ubuntu 20 or higher

### Requirements
- x86_64 architecture (amd64)
- KVM virtualization
- Root access server
- Valid domain name
- Valid Certificate SSL (put cert.crt & cert.key in /etc/sshws/cert/)

### Port
- OpenSSH: 22
- Dropbear: 109
- OpenSSH SSL: 444
- Dropbear SSL: 777
- WebSocket TLS: 443
- WebSocket NonTLS: 80
- BadVPN UDPGW: 7300

### Notes
- This script is FREE
- To register an IP, [contact me](https://t.me/AxFrds)
