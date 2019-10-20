#!/bin/sh
echo  '\n'
echo Install Homebrew, wget and cask
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install wget

echo Install mas-cli for downloading apps from the Mac App Store
brew install mas

echo Install App Store Apps
echo Signin to Mac App Store using dialog
# keynote
mas install 409183694
# pages
mas install 409201541
# magnet
mas install 441258766

echo Install frequently used Applications
brew cask install --appdir="/Applications" atom
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" adobe-acrobat-reader
brew cask install --appdir="~/Applications" adobe-creative-cloud
brew cask install --appdir="~/Applications" spark
brew cask install --appdir="~/Applications" vlc
brew cask install --appdir="~/Applications" microsoft-office
brew cask install --appdir="~/Applications" mattermost
brew cask install --appdir="~/Applications" slack
brew cask install --appdir="~/Applications" lastpass

# Development
echo Install Dev Apps
brew cask install --appdir="/Applications" github
brew cask install --appdir="/Applications" docker
brew cask install --appdir="~/Applications" java
#brew cast install --appdir="/Applications" intellij-idea

#IT Tools
echo Install IT Tools
# Mircosoft Remote Desktop 10
mas install 1295203466
# The unarchiver
mas install 425424353
# xcode
mas install 497799835
# bit defender
mas install 500154009

echo Install Plugins
brew cask install --appdir="~/Applications" flash-ppapi
brew cask install --appdir="~/Applications" flash-npapi

# Google Slavery
echo Install Google Apps | Chrome not included cause of 1Password Plugin
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" google-drive

# Nice to have
# echo Install Some additional Apps


# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
echo "Security: https://objective-see.com/products.html"
