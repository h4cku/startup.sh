apt update
apt install git curl zsh make vim
apt install ngrep netcat-openbsd socat telnet
apt install neovim ripgrep
apt install nasm gcc gdb clang-format clangd
apt install python3 python3-pip golang npm nodejs

mkdir -p $HOME/.config/nvim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

git clone https://github.com/elvin-mark/init.vim $HOME/.config/nvim

pip3 install -r requirements.txt  --break-system-packages

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
