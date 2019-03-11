# Install/Update NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

# Setup Shell + Terminal
# adopted from: https://medium.com/@caulfieldOwen/youre-missing-out-on-a-better-mac-terminal-experience-d73647abf6d7
# Install zsh shell
brew install zsh
brew install zsh-completions

# Make zsh your system’s default shell:
chsh -s $(which zsh)
echo $SHELL # expected result: /bin/zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions;

# install spaceship-prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
# Symlink spaceship.zsh-theme to your oh-my-zsh custom themes directory:
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Remove outdated versions from the cellar.
brew cleanup
