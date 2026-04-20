# Linux Network Lab 

## Description
This project demonstrates basic Linux networking configuration:
- static IP configuration
- routing between machines
- NAT setup using iptables

## Architecture

- server1 — acts as a router (NAT + forwarding)
- client1 — internal network
- client2 — internal network

## Configuration

### 1. Enable IP forwarding
```bash
echo 1 > /proc/sys/net/ipv4/ip_forward

Configure NAT

iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE

Configure forwarding rules

iptables -A FORWARD -i enp0s8 -o enp0s3 -j ACCEPT
iptables -A FORWARD -i enp0s3 -o enp0s8 -m state --state RELATED,ESTABLISHED -j ACCEPT

Testing

Ping between clients ✔
Internet access via server ✔

Technologies

Linux (Ubuntu)
VirtualBox
iptables
Netplan
