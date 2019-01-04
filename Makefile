# --------- INSTALL ---------
install: install_fonts install_plug install_plugins

install_fonts:
	git clone git@github.com:powerline/fonts.git ~/Downloads/fonts
	cd ~/Downloads/fonts
	./install.sh
	cd -

install_plug:
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
			https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

install_plugins:
	nvim \+PlugInstall \+qa


# --------- UPDATE ---------
update: update_plugins

update_plugins:
	git pull
	nvim \+PlugUpdate \+PlugClean \+qa
