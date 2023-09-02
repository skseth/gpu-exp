# Installing gstreamer on ubuntu

https://docs.nvidia.com/metropolis/deepstream/dev-guide/text/DS_Quickstart.html#remove-all-previous-deepstream-installations

sudo apt-get install mlocate

pkg-config --variable pc_path pkg-config
export PKG_CONFIG_PATH=$(pwd)

echo "$HOME/cerbero/build/dist/linux_x86_64/lib" >> /etc/ld.so.conf.d/gstreamer-1.0.conf
<!-- sudo cp gstreamer-1.0.conf /etc/ld.so.conf.d/ -->
sudo ldconfig

python3 -m site --user-site

PYTHONPATH="$HOME/cerbero/build/build-tools/lib/python3.8/site-packages/"
PATH="$HOME/cerbero/build/dist/linux_x86_64/bin:$HOME/cerbero/build/build-tools/bin:$PATH"

sudo -V
