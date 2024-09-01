⚠️ This repo is configured to work **ONLY on macOS**.

Use these dotfiles repo for the following:
1. ✅ Install Homebrew packages
2. ✅ Install Apps using Homebrew
3. ✅ Set MacOS defaults using [this guide](https://macos-defaults.com)
4. ✅ Clone `.[files]`(dotfiles) to correct repo using [gnustow](https://www.gnu.org/software/stow/)

**How was this repo setup?**
I used a mixture of [this](https://blog.alyssaholland.me/dotfiles-management) & [this](https://dev.to/miguelcrespo/how-to-automate-software-installation-and-configuration-on-macos-using-homebrew-and-stow-4d8l) guide to set it up.

# Presteps
1. Sign in to Mac App Store using your Apple ID.
2. Install [Homebrew](https://brew.sh).
3. Install git from Homebrew using `brew install git` command to clone this repo.
4. Run `git clone https://github.com/alishahlakhani/dotfiles.git`

# Steps
1. Open terminal
2. Run `chmod +x setup.sh mac-settings.sh` to make these two file executable.
3. Run `./setup.sh` command to install homebrew packages + mac apps from AppStore
4. All done...
