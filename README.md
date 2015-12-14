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
git clone git@github.com:Lucasosf/vimlociraptor.git ~/.vimlociraptor
```

 - create a symlink as the follow:
```
ln -s ~/.vimlociraptor/vimrc ~/.config/nvim/init.vim
```
 - Install [Vundle](https://github.com/VundleVim/Vundle.vim)
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
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

- run neovim
```
nvim
```

Welcome to Vimlociraptor

# Updating

```
cd ~/.vimlociraptor
git pull
nvim \+PluginUpdate \+qa
```

# Contributing

Feel free to open an issue or fork and open a pull request.

---
Cheers,

[Contributors](https://github.com/Lucasosf/dragoz/graphs/contributors)


