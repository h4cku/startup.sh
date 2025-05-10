pacman -Syu git curl wget zsh make vim unzip
pacman -Syu ngrep socat inetutils nmap tcpdump
pacman -Syu neofetch htop
pacman -Syu neovim ripgrep tmux
pacman -Syu nasm gcc gdb clang
pacman -Syu python python-pip go npm nodejs
pacman -Syu cmus w3m

mkdir -p $HOME/.config/nvim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

git clone https://github.com/elvin-mark/init.vim $HOME/.config/nvim

pip3 install -r requirements.txt  --break-system-packages

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
