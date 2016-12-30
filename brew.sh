#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
# brew install ringojs
# brew install narwhal

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
# brew install homebrew/php/php56 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
# brew install bfg
# brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install netpbm
# brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
# brew install tcptrace
# brew install ucspi-tcp # `tcpserver` etc.
# brew install xpdf
# brew install xz

# Install other useful binaries.
brew install ack
brew install dark-mode
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install tree
brew install vbindiff
brew install webkit2png
brew install zopfli
brew install sshfs
brew install byobu
brew install htop


# Remove outdated versions from the cellar.
brew cleanup

######################################
# BREW Cask
brew tap caskroom/cask
brew update
brew cask update

brew cask install alfred
brew cask install appcleaner
brew cask install bettertouchtool
brew cask install cakebrew
brew cask install cheatsheet
brew cask install cyberduck
brew cask install dash
brew cask install disablemonitor
brew cask install divvy
brew cask install dropbox
brew cask install firefox
brew cask install flux
brew cask install gfxcardstatus
brew cask install gitup
brew cask install google-chrome
brew cask install google-drive
brew cask install handbrake
brew cask install insomniax
brew cask install istat-menus
brew cask install iterm2
brew cask install karabiner
brew cask install keka
brew cask install numi
brew cask install onyx
brew cask install osxfuse
brew cask install path-finder
brew cask install pgadmin4
brew cask install qbittorrent
brew cask install rcdefaultapp
brew cask install slack
brew cask install spectacle
brew cask install sublime-text
brew cask install switchresx
brew cask install tagger
brew cask install the-unarchiver
brew cask install tunnelblick
brew cask install veracrypt
brew cask install visual-studio-code
brew cask install vlc
brew cask install vox

