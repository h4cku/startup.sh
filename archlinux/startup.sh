# === Essential CLI Tools ===
pacman -Syu git curl wget zsh make vim unzip
pacman -Syu cmus w3m
pacman -Syu fastfetch htop btop bat
pacman -Syu neovim ripgrep tmux

# === Networking Tools ===
pacman -Syu ngrep socat inetutils nmap tcpdump

# === Programming Tools (Assembly, C/C++, Debuggers) ===
pacman -Syu nasm gcc gdb clang

# === Programming Languages & Runtimes ===
pacman -Syu python python-pip go npm nodejs

# === Create Neovim config directory ===
mkdir -p $HOME/.config/nvim

# === Install vim-plug (plugin manager for Neovim) ===
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# === Clone personal Neovim config ===
git clone https://github.com/elvin-mark/init.vim $HOME/.config/nvim

# === Install Python requirements ===
pip3 install -r requirements.txt  --break-system-packages

# === Install global npm packages (used by Neovim LSP and formatters) ===
npm install -g typescript typescript-language-server prettier

# === Install Oh My Zsh ===
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
