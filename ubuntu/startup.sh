apt update
apt install git curl zsh make vim unzip tree wget
apt install ngrep netcat-openbsd socat telnet
apt install ripgrep tmux
apt install nasm gcc gdb clang-format clangd
apt install python3 python3-pip golang npm nodejs
apt install cmus w3m btop

# Install Neovim 0.11.3
wget https://github.com/neovim/neovim/releases/download/v0.11.3/nvim-linux-x86_64.tar.gz
tar xzf nvim-linux-x86_64.tar.gz
mv nvim-linux-x86_64 nvim && mv nvim /opt/

mkdir -p $HOME/.config/nvim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

git clone https://github.com/elvin-mark/init.vim $HOME/.config/nvim

pip3 install -r requirements.txt  --break-system-packages

npm install -g typescript typescript-language-server prettier

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
