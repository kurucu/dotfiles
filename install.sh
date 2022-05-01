#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Install PHP extensions with Pickle
pickle install imagick memcached redis swoole

# Install global Composer packages
/usr/local/bin/composer global require laravel/installer laravel/valet beyondcode/expose

# Create a Developer directory
# This is a default directory for macOS user accounts but doesn't comes pre-installed
mkdir $HOME/Developer
mkdir $HOME/Sites
mkdir $HOME/Developer/XCode
mkdir $HOME/Developer/Packages
mkdir $HOME/Developer/Nova

# Clone Github repositories
./clone.sh

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install
$HOME/.composer/vendor/bin/valet park $HOME/Sites

# Set macOS preferences
# We will run this last because this will reload the shell
# source .macos
