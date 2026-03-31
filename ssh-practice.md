# SSH Practice (VM1 ↔ VM2)

## Goal
Configure SSH access between two machines using SSH keys and transfer files securely.

---

## Setup

VM1 - client  
VM2 - server  

---

## 1. Create user on VM2

sudo adduser name_surname

---

## 2. Install and start SSH

sudo apt install openssh-server -y
sudo systemctl start ssh
sudo systemctl enable ssh

---

## 3. Check connectivity

ping <VM2_IP>

---

## 4. Generate SSH keys (VM1)

ssh-keygen

---

## 5. Copy key to VM2

ssh-copy-id name_surname@<VM2_IP>

---

## 6. Connect without password

ssh name_surname@<VM2_IP>

---

## 7. Configure SSH config

nano ~/.ssh/config

Host vm2
  HostName <VM2_IP>
  User name_surname
  IdentityFile ~/.ssh/id_rsa

Connect:

ssh vm2

---

## 8. Copy file

echo "Hello from VM1" > file.txt

scp file.txt vm2:~

---

## Result

- SSH connection established
- Login without password
- File successfully copied

