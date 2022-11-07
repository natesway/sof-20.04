wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.19.17.tar.xz
sudo apt install libc6-dev ncurses-dev gcc make binutils elfutils flex bison devscripts libssl-dev python3-pytest libelf-dev
tar -Jxvf linux-5.19.17.tar.xz
cd linux-5.19.17
wget https://raw.githubusercontent.com/eupnea-linux/kernel/main/kernel.conf
mv kernel.conf .config
make oldconfig
make testconfig
make -j2 bindeb-pkg
mkdir ../deb
mv *.deb ../deb
