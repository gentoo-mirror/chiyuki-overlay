# Gentoo Overlay
Chiyuki's Personal Gentoo Linux Overlay

个人使用的overlay


## 使用方法

- Method 1
```
sudo eselect repository add chiyuki-overlay git https://github.com/IllyaTheHath/gentoo-overlay.git
sudo emerge --sync chiyuki-overlay
```
- Method 2
```
sudo touch /etc/portage/repos.conf/chiyuki-overlay

cat << EOF | sudo tee -a /etc/portage/repos.conf/chiyuki-overlay
[chiyuki-overlay]
location = /var/db/repos/chiyuki-overlay
sync-type = git
sync-uri = https://github.com/IllyaTheHath/gentoo-overlay
EOF

sudo emerge --sync chiyuki-overlay
```

---

