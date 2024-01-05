# Gentoo Overlay
Chiyuki's Personal Gentoo Linux Overlay

个人使用的overlay

## Usage | 使用方法

- Method 1
```
sudo eselect repository enable chiyuki-overlay
sudo emerge --sync chiyuki-overlay
```
- Method 2
```
sudo eselect repository add chiyuki-overlay git https://github.com/IllyaTheHath/gentoo-overlay.git
sudo emerge --sync chiyuki-overlay
```
- Method 3
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

## Packages List | 包含的软件包列表

| Package | Version | Keyword | Homepage |
| ------- | ------- | ------- | -------- |
| dev-libs/sing-geoip | 20231012 | ~amd64 | https://github.com/SagerNet/sing-geoip |
| dev-libs/sing-geosite | 20231015073627 | ~amd64 | https://github.com/IllyaTheHath/sing-geosite |
| games-util/xivlauncher-cn | 1.0.6.2 | ~amd64 | https://github.com/ottercorp/XIVLauncher.Core |
| | 1.0.4.0 | ~amd64 | |
| media-video/mpc-qt | 9999 | ** | https://github.com/mpc-qt/mpc-qt |
| | 23.12 | ~amd64 | |
| | 23.02 | ~amd64 | |
| net-proxy/naiveproxy | 120.0.6099.43-r1 | ~amd64 | https://github.com/klzgrad/naiveproxy |
| | 119.0.6045.66-r1 | ~amd64 | |
| net-proxy/nekoray-bin | 3.26 | ~amd64 | https://github.com/MatsuriDayo/nekoray |
| net-proxy/sing-box | 1.7.8 | ~amd64 | https://github.com/SagerNet/sing-box |
