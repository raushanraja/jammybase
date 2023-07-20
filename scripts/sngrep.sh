apt install -y git autoconf automake gcc make libncursesw5-dev libncurses5-dev \
  libcap-dev libpcap-dev libssl-dev libpcre3-dev

# Download the tar.gz file
wget https://github.com/irontec/sngrep/releases/download/v1.7.0/sngrep-1.7.0.tar.gz

# Extract the tar.gz file into the sngrep folder
tar -xzf sngrep-1.7.0.tar.gz

# Optional: Remove the downloaded tar.gz file
rm sngrep-1.7.0.tar.gz

cd sngrep-1.7.0

# Build and install sngrep
./bootstrap.sh
./configure
make
make install

# Remove sngrep directory
cd ..
rm -rf sngrep-1.7.0
