#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
# brew install vim --with-override-system-vi
brew install grep
# brew install openssh
brew install screen
brew install php
brew install gmp

# open current folder in iTerm
brew cask install openinterminal-lite

# Add Webdev stuff
brew install yarn

# Install great Spaceship Prompt (git, node info etc.) https://github.com/denysdovhan/spaceship-prompt
yarn add -g spaceship-prompt

# Install other useful binaries.
brew install git
brew install git-lfs

# like nvm, but for environment variables via .envrc in dictionaries
brew install direnv

# Remove outdated versions from the cellar.
brew cleanup
