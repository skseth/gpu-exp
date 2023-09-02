#!/bin/bash


 kind: compute#metadata
name: samir-ubuntu-desktop
networkInterfaces:
- accessConfigs:
  - kind: compute#accessConfig
    name: External NAT
    natIP: 34.100.206.99
    networkTier: PREMIUM
    type: ONE_TO_ONE_NAT
  fingerprint: SkN29aNXAMg=
  kind: compute#networkInterface
  name: nic0
  network: https://www.googleapis.com/compute/v1/projects/npci-311105/global/networks/default
  networkIP: 10.160.15.243
  stackType: IPV4_ONLY
  subnetwork: https://www.googleapis.com/compute/v1/projects/npci-311105/regions/asia-south1/subnetworks/default
reservationAffinity:
  consumeReservationType: ANY_RESERVATION
scheduling:
  automaticRestart: false
  instanceTerminationAction: STOP
  onHostMaintenance: TERMINATE
  preemptible: true
  provisioningModel: SPOT
selfLink: https://www.googleapis.com/compute/v1/projects/npci-311105/zones/asia-south1-a/instances/samir-ubuntu-desktop
serviceAccounts:
- email: 306964915356-compute@developer.gserviceaccount.com
  scopes:
  - https://www.googleapis.com/auth/devstorage.read_only
  - https://www.googleapis.com/auth/logging.write
  - https://www.googleapis.com/auth/monitoring.write
  - https://www.googleapis.com/auth/servicecontrol
  - https://www.googleapis.com/auth/service.management.readonly
  - https://www.googleapis.com/auth/trace.append
shieldedInstanceConfig:
  enableIntegrityMonitoring: true
  enableSecureBoot: false
  enableVtpm: true
shieldedInstanceIntegrityPolicy:
  updateAutoLearnPolicy: true
startRestricted: false
status: RUNNING
tags:
  fingerprint: 42WmSpB8rSM=
zone: https://www.googleapis.com/compute/v1/projects/npci-311105/zones/asia-south1-a



sudo apt update && \
    apt-get install \
    libgstreamer1.0-dev \
    libgstreamer-plugins-base1.0-dev \
    libgstreamer-plugins-bad1.0-dev \
    gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-libav \
    gstreamer1.0-doc \
    gstreamer1.0-tools \
    gstreamer1.0-x \
    gstreamer1.0-alsa \
    gstreamer1.0-gl \
    gstreamer1.0-gtk3 \
    gstreamer1.0-qt5 \
    gstreamer1.0-pulseaudio 

sudo apt-get install \
    gstreamer-1.0 \
    gstreamer1.0-dev

sudo apt-get install \
    python3.8 python3.8-dev python-dev python3-dev 
sudo apt-get install \
    python3-pip python-dev 
sudo apt-get install \
    python3.8-venv


apt install python3-gi python-gi-dev


sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 10


# From https://ubuntu.com/blog/launch-ubuntu-desktop-on-google-cloud

sudo apt update
sudo apt install --assume-yes wget tasksel

wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt-get install --assume-yes ./chrome-remote-desktop_current_amd64.deb


sudo tasksel install ubuntu-desktop

# with sudo -
echo "exec /etc/X11/Xsession /usr/bin/gnome-session" > /etc/chrome-remote-desktop-session

# setup chrome remote desktop at : https://remotedesktop.google.com/headless
# ignore errors d

sudo reboot

sudo apt-get install git autoconf automake libtool


sudo apt-get install python3-gi python3-gst-1.0 
sudo apt-get install libgirepository1.0-dev
sudo apt-get install libcairo2-dev 


export CHROME_REMOTE_DESKTOP_DEFAULT_DESKTOP_SIZES=1600x1200,3840x2560
sudo nano /etc/polkit-1/localauthority.conf.d/02-allow-colord.conf

polkit.addRule(function(action, subject) {
 if ((action.id == "org.freedesktop.color-manager.create-device" ||
 action.id == "org.freedesktop.color-manager.create-profile" ||
 action.id == "org.freedesktop.color-manager.delete-device" ||
 action.id == "org.freedesktop.color-manager.delete-profile" ||
 action.id == "org.freedesktop.color-manager.modify-device" ||
 action.id == "org.freedesktop.color-manager.modify-profile") &&
 subject.isInGroup("{users}")) {
 return polkit.Result.YES;
 }
});


sudo apt-get install \
.   libgstreamer1.0-dev \
.   libgstreamer-plugins-base1.0-dev \
.   libgstreamer-plugins-bad1.0-dev \
.   gstreamer1.0-plugins-base \
.   gstreamer1.0-plugins-good \
.   gstreamer1.0-plugins-bad \
.   gstreamer1.0-plugins-ugly \
.   gstreamer1.0-libav \
.   gstreamer1.0-doc \
.   gstreamer1.0-tools \
.   gstreamer1.0-x \
.   gstreamer1.0-alsa \
.   gstreamer1.0-gl \
.   gstreamer1.0-gtk3 \
.   gstreamer1.0-qt5 \
.   gstreamer1.0-pulseaudio 


sudo apt-get install \
    python3-dev \
    libcairo2-dev \
    libgirepository1.0-dev 


# for tutorials
sudo apt-get install \
    libgtk-3-dev


# sudo apt install pkg-config libcairo2-dev gcc python3-dev libgirepository1.0-dev


## References

https://medium.com/@kumon/instant-nerf-on-google-compute-engine-via-chrome-remote-desktop-eee4fd98df56
https://www.linuxcapable.com/install-nvidia-drivers-on-debian/
