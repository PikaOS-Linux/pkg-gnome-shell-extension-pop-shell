DEBIAN_FRONTEND=noninteractive

# Clone Upstream
cd ./gnome-shell-extension-pop-shell

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage --no-sign

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
