#!/bin/bash

if [ ! -f ~/.ssh/id_ed25519 ]; then
ssh-keygen -o -a 100 -t ed25519 -f ~/.ssh/id_ed25519 -C "m@technovangelist.com"
fi
SUDO_USER=$(whoami)

fancy_echo() {
  local fmt="$1"; shift

  # shellcheck disable=SC2059
  printf "\\n$fmt\\n" "$@"
}
if [ ! -d "$HOME/bin" ]; then
  mkdir "$HOME/bin"
fi

if [ ! -d "$HOME/projects/src/github" ]; then
  mkdir -p "$HOME/projects/src/github"
fi

if [ ! -d "$HOME/.config" ]; then
  mkdir "$HOME/.config"
fi

if ! command -v brew &> /dev/null; then
  fancy_echo "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  
fi
brew update
if ! command -v fish &> /dev/null; then
  fancy_echo "Installing Fish"
  brew install fish
  sudo bash -c 'echo /opt/homebrew/bin/fish >> /etc/shells'
  chsh -s "$(which fish)"
fi

if [ "$1" = "full" ]; then

cd ~/projects/src/github
git clone https://github.com/square/maximum-awesome.git maximum-awesome-vim
cd maximum-awesome-vim
fancy_echo "Installing maximum-awesome Vim"
rake
cd

xcode-select --install



  # brew
  brew install coreutils
  brew install gnu-sed
  brew install gnu-tar
  brew install gnu-indent
  brew install gnu-which

  brew install findutils

PACKAGES=(
    bat
    ack
    autoconf
    automake
    autojump
    aws-iam-authenticator
    browsh
    ffmpeg
    fx
    fzf
    gcc
    gifsicle
    git
    gh
    gnupg
    httpie
    kubernetes-cli
    kubernetes-helm
    imagemagick
    jq
    jpegoptim
    libjpeg
    make
    markdown
    nmap
    npm
    n
    node
    optipng
    pkg-config
    python
    python3
    pypy
    q
    ripgrep
    rename
    ssh-copy-id
    tig
    terminal-notifier
    the_silver_searcher
    tmux
    tree
    yamllint
    yarn
    unzip
    vim
    watch
    watchman
    wget
)

  echo "Installing packages..."
  brew install ${PACKAGES[@]}

  n lts


  # brew cask
  CASKS=(
    iterm2
    slack
    spotify
    visual-studio-code
    1password
    min
    alfred
    google-chrome
    setapp
    zoom
)
echo "Installing cask apps..."
brew cask install ${CASKS[@]}

  brew tap "homebrew/services"



  # brew fonts
  brew tap homebrew/cask-fonts

  brew cask install \
      font-fira-code \
      font-source-code-pro font-source-code-pro-for-powerline \
      font-source-sans-pro \
      font-jetbrains-code



  # brew mas
  brew install mas
  mas install 824183456
  mas install 634148309
  mas install 824171161
  mas install 975937182
  mas install 585829637
  mas install 1513574319
  mas install 434290957
  mas install 1493326487
  mas install 424390742

  defaults write NSGlobalDomain KeyRepeat -int 0
  defaults write com.apple.screensaver askForPassword -int 1
  defaults write com.apple.screensaver askForPasswordDelay -int 0
  defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
  defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
  chflags nohidden ~/Library
  defaults write com.apple.finder AppleShowAllFiles YES
  defaults write com.apple.finder ShowPathbar -bool true
  defaults write com.apple.finder ShowStatusBar -bool true
  defaults write com.apple.finder FXPreferredViewStyle Nlsv
  defaults write com.apple.dock autohide -bool true
  defaults write com.apple.dock autohide-delay -float 0
  defaults write com.apple.dock autohide-time-modifier -float 0
  defaults write com.apple.dock mru-spaces -bool false

  wget https://github.com/workman-layout/Workman/archive/refs/heads/master.zip 
  unzip master.zip
  cd Workman-master/mac
  sudo mv Workman.bundle /Library/Keyboard\ Layouts/




fi
