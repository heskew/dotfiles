# Install Homebrew if not found
brew --version
if [[ $? -ne 0 ]]; then
    # Clean-up failed Homebrew install
    rm -rf "/usr/local/Cellar" "/usr/local/.git"
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade brew-cask
brew upgrade --all

# Include duplicates packages
brew tap homebrew/dupes

# Install Cask
brew tap caskroom/cask
brew tap caskroom/versions
brew install brew-cask

# Brews
brew install go
brew install node
brew install ssh-copy-id
brew install wget

# Casks
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Casks: Dev
brew cask install dockertoolbox
brew cask install heroku-toolbelt
brew cask install sublime-text3
brew cask install vagrant

# Casks: tools/misc
brew cask install adobe-reader
brew cask install cyberduck
brew cask install flux
brew cask install skype
brew cask install spectacle

# Clean things up
brew linkapps
brew cleanup
brew prune
brew cask cleanup
