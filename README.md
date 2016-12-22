[Vim]lociraptor
===============

This is a distribution of plugins and mappings for Vim.

>To acquire knowledge, one must study; but to acquire wisdom, one must observe.<br>
><small>- Marilyn vos Savant</small>

# Installation

 - Install [Neovim](https://github.com/neovim/neovim)
<small>for OSX users:
```
brew update
brew install neovim/neovim/neovim
```

 - clone the project
```
git clone git@github.com:Lucasosf/vimlociraptor.git ~/.config/nvim/
```

- Install [EditorConfig](http://editorconfig.org/)
```
sudo apt-get install editorconfig
```

- Install [Ack](http://beyondgrep.com/install/)
```
sudo apt-get install ack-grep
sudo dpkg-divert --local --divert /usr/bin/ack --rename --add /usr/bin/ack-grep
```

 - Install [Vundle](https://github.com/VundleVim/Vundle.vim)
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
```

 - Install the vundle plugins
```
nvim \+PluginInstall \+qa
```

- Install [powerline fonts](https://github.com/powerline/fonts#font-families)
```
git clone git@github.com:powerline/fonts.git ~/Downloads/fonts
cd ~/Downloads/fonts
./install.sh
```
Then set one of the powerline fonts in your terminal.

- run neovim
```
nvim
```

Welcome to Vimlociraptor!

# Updating

```
cd ~/.config/nvim/
git pull
nvim \+PluginUpdate \+qa
```

---
Cheers,

Lucas Oliveira
