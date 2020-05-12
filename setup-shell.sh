# Install/Update NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# Setup Shell + Terminal
# adopted from: https://medium.com/@caulfieldOwen/youre-missing-out-on-a-better-mac-terminal-experience-d73647abf6d7
# Install zsh shell
# brew install zsh (not needed anymore, macOS uses zsh by default)
brew install zsh-completions

# Make zsh your system’s default shell:
chsh -s $(which zsh)
echo $SHELL # expected result: /bin/zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Remove outdated versions from the cellar.
brew cleanup
