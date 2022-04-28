# Only support
- Debian or Ubuntu os
- KVM virtualization
- Root user

# Installation
`
wget -q https://axfrds.my.id/setup.sh && chmod +x setup.sh && ./setup.sh
`

# Services
- OpenSSH: 22
- Dropbear: 143
- SSL OpenSSH: 444
- SSL Dropbear: 442
- WS TLS: 433
- WS non-TLS: 80
- BadVPN Udpgw: 7300, 7400, 7500

# Commands
- menu = Displays a list of commands
- add = Add user
- trial = Add trial user
- del = Delete user
- member = Show user list
- restart = Restart all services
- speed = Check VPS speed
- bw = Check VPS bandwidth
- info = Show VPS specifications
