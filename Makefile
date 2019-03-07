.DEFAULT_GOAL := setup_all

install_brew: 
	sh ./brew/install.sh

setup_all: setup_ssh setup_bashrc setup_zshrc setup_tmuxconf setup_gitconfig

setup_ssh:
	sh ./.scripts/setup_ssh.sh

setup_bashrc: 
	sh ./.scripts/setup_bashrc.sh

setup_zshrc: 
	sh ./.scripts/setup_zshrc.sh

setup_tmuxconf: 
	sh ./.scripts/setup_tmuxconf.sh

setup_gitconfig: 
	sh ./.scripts/setup_gitconfig.sh

