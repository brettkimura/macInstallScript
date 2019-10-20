#!/bin/sh
echo  '\n'
echo Install Homebrew, Postgres, wget and cask
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

brew cask install --appdir="/Applications" atom
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" adobe-acrobat-reader
brew cask install --appdir="~/Applications" adobe-creative-cloud
brew cask install --appdir="~/Applications" spark
brew cask install --appdir="~/Applications" vlc
brew cask install --appdir="~/Applications" java
brew cask install --appdir="~/Applications" microsoft-office
brew cask install --appdir="~/Applications" flash-ppapi
brew cask install --appdir="~/Applications" flash-npapi

#brew cask install --appdir="/Applications" alfred

## get from App Store
#brew cask install --appdir="/Applications" evernote
#brew cask install --appdir="/Applications" wunderlist
#brew cask install --appdir="/Applications" clamxav

# Development
echo Install Dev Apps
brew cask install --appdir="/Applications" github
brew cask install --appdir="/Applications" docker

#IT Tools
echo Install IT Tools

# Google Slavery
echo Install Google Apps | Chrome not included cause of 1Password Plugin
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" google-drive

# Nice to have
# echo Install Some additional Apps

# Link Cask Apps to Alfred
brew cask alfred link
# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
echo "Security: https://objective-see.com/products.html"
