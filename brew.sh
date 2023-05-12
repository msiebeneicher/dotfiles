#!/usr/bin/env bash

# Install command-line tools using Homebrew.
# based on https://github.com/mathiasbynens/dotfiles/blob/main/brew.sh

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
brew install coreutils

# Install some other useful utilities like `sponge`.
# brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`
brew install gnu-sed

# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install more recent versions of some macOS tools.
# brew install vim --with-override-system-vi
brew install grep
brew install make
brew install openssh

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
brew install fzf
brew install git
brew install git-lfs
brew install gh
brew install gitleaks
brew install lazygit
brew install jq
brew install ripgrep
brew install shellcheck
brew install shfmt
brew install tree
brew install zsh-autosuggestions

# Install programming languages
brew install go

# Install other tools
# brew install --cask fly   # fly needs to by in sync with used server version
brew install --cask 1password
brew install --cask amazon-workspaces
brew install --cask appcleaner
brew install --cask iterm2
brew install --cask macdown
brew install --cask masscode
brew install --cask openlens
brew install --cask sourcetree
brew install --cask spotify
brew install --cask superproductivity
brew install --cask the-unarchiver
brew install --cask tunnelblick
brew install --cask visual-studio-code

# Install DevOps tooling
brew install actionlint
brew install ansible
brew install aws-nuke
brew install chef/chef/inspec #cask
brew install go-task
brew install helm
brew install kubectx
brew install kubernetes-cli
brew install packer
brew install shellcheck

brew install --cask docker
#brew install --cask rancher # docker-desktop alternative

# Remove outdated versions from the cellar.
brew cleanup

echo "unsupported tools for manual installation:"
echo "go install github.com/transcend-io/terragrunt-atlantis-config@v1.16.0"

# addtional echo "unsupported tools for manual installation:"
echo "addtional extensions for manual installation:"
echo "gh extension install dlvhdr/gh-dash" # see https://github.com/dlvhdr/gh-dash
