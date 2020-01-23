apt update -y
apt upgrade -y
apt install libcdb-dev libjuman zlib1g-dev build-essential libboost-all-dev -y

wget http://nlp.ist.i.kyoto-u.ac.jp/nl-resource/juman/juman-7.01.tar.bz2
tar jxvf juman-7.01.tar.bz2
cd juman-7.01
./configure
make
make install
cd ..

echo 'include /usr/local/lib' >> /etc/ld.so.conf
ldconfig

wget http://nlp.ist.i.kyoto-u.ac.jp/nl-resource/jumanpp/jumanpp-1.02.tar.xz
tar xJvf jumanpp-1.02.tar.xz
cd jumanpp-1.02
./configure
make
make install

wget http://nlp.ist.i.kyoto-u.ac.jp/nl-resource/knp/knp-4.19.tar.bz2
tar jxvf knp-4.19.tar.bz2
cd knp-4.19
./configure
make
make install
cd ..