# Install lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
install lazygit /usr/local/bin
rm -rf lazygit
rm -rf lazygit.tar.gz

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
