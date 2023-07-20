apt install pkg-config dh-autoreconf ncurses-dev build-essential libssl-dev libpcap-dev libncurses5-dev libsctp-dev lksctp-tools cmake -y
git clone --branch v3.7.1 https://github.com/SIPp/sipp.git
cd sipp
cmake . -DUSE_SSL=1 -DUSE_SCTP=1 -DUSE_PCAP=1 -DUSE_GSL=1
make all
make install
cd ..
rm -rf sipp
