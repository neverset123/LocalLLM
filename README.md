## start server
``` 
docker run --rm -p 8080:8080 --network="host" --gpus all --name local-ai -ti localai/localai:latest-aio-gpu-nvidia-cuda-11
``` 
## update nv gpu driver
https://comzyh.com/blog/archives/967/
1. update kernel
```
lspci -k | grep -A 2 -i "VGA"
sudo apt-get remove --purge '^nvidia-.*'
sudo apt-get update
sudo ubuntu-drivers autoinstall
sudo reboot
```
2. update client
check mismatched version:
dmesg | grep NVRM

go to Software&Update, select matched version with kernel and install

3. shudown autoupdate
vi /etc/apt/apt.conf.d/10periodic
vi /etc/apt/apt.conf.d/20auto-upgrades

dpkg --get-selections | grep nvidia
sudo apt-mark hold nvidia-driver-XXX
apt-mark showhold
