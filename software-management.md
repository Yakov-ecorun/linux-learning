# Software Management Practice (Ubuntu)

## Goal
Learn how to manage packages and services using apt and systemctl

---

## 1. Find apache (httpd)

apt search apache2

---

## 2. Install apache

sudo apt update
sudo apt install apache2 -y

---

## 3. Start apache

sudo systemctl start apache2

Check status:

sudo systemctl status apache2

---

## 4. Remove apache

sudo apt remove apache2 -y

---

## 5. Find nginx

apt search nginx

Check repository:

apt policy nginx

---

## 6. Install nginx

sudo apt install nginx -y

---

## 7. Start nginx

sudo systemctl start nginx

Check status:

sudo systemctl status nginx

---

## Troubleshooting

### Problem:
Apache failed to start

### Reason:
Port 80 already used by nginx

### Solution:

sudo systemctl stop nginx
sudo systemctl start apache2

---

## Result

- Installed packages using apt
- Managed services with systemctl
- Found and fixed port conflict
- Used logs for debugging
