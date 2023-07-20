# Use wget to download the latest release of Neovim Tar
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz

# Extract the tar file
tar -xzf nvim-linux64.tar.gz -C /usr/local/share/ 

# Create a symlink to the nvim binary
ln -s /usr/local/share/nvim-linux64/bin/nvim /usr/local/bin/nvim

# Delete the tar file
rm nvim-linux64.tar.gz

# Make a directory for nvim config
mkdir -p ~/.config
