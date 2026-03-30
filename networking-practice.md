# Networking Practice (VM1 ↔ VM2)

## Goal
Configure networking between two VMs and test connectivity using curl

---

## Setup

VM1 - server (apache)
VM2 - client

---

## 1. Install apache on VM1

sudo apt update
sudo apt install apache2 -y

Start service:

sudo systemctl start apache2

---

## 2. Create web page

echo "Hello" | sudo tee /var/www/html/index.html

Test locally:

curl localhost

---

## 3. Get IP of VM1

ip a

Example:
192.168.49.1

---

## 4. Configure VM2 hosts

sudo nano /etc/hosts

Add:

192.168.49.1 myserver.local

---

## 5. Test connectivity

ping myserver.local

---

## 6. Test HTTP

curl -L myserver.local

---

## Result

- Successfully resolved hostname via /etc/hosts
- Accessed web server from another VM
- Verified HTTP response

Output:

Hello
