# Practice: journalctl + nginx

## Goal
Learn how to use journalctl and debug nginx service

## Steps

### 1. Install nginx
sudo apt update
sudo apt install nginx -y

### 2. Start nginx
sudo systemctl start nginx

### 3. Stop nginx
sudo systemctl stop nginx

### 4. View logs
journalctl -u nginx

### 5. Break nginx config
sudo mv /etc/nginx/nginx.conf ./

### 6. Try to start nginx
sudo systemctl start nginx

### 7. Check errors
journalctl -u nginx -p err -b

## Result

- nginx failed to start after config removal
- error found in logs
- learned how to debug using journalctl
