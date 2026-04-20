# Linux Network Lab

## Description
This project demonstrates a simple network setup using VirtualBox.

## Architecture
- Server acts as router (NAT)
- Clients connected via internal network

## Technologies
- Ubuntu
- Netplan
- iptables

## Features
- Internal network communication
- NAT configuration
- Internet access from clients

## Commands used

### Enable routing
echo 1 > /proc/sys/net/ipv4/ip_forward

### NAT
iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE
