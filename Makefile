all: bash ssh vim xsession i3 mc mutt

bash:
	cp -fv .bash_profile $${HOME}/.bash_profile
	cp -fv .bashrc $${HOME}/.bashrc

ssh:
	install -d -m 0700 $${HOME}/.ssh
	cp -fv .ssh/config $${HOME}/.ssh/config

vim:
	cp -fv .vimrc $${HOME}/.vimrc

xsession:
	cp -fv .xsession $${HOME}/.xsession
	cp -fv .Xresources $${HOME}/.Xresources

i3:
	mkdir -p $${HOME}/.config/i3
	cp -fv .config/i3/* $${HOME}/.config/i3/
	cp -fv .i3status.conf $${HOME}/.i3status.conf
	mkdir -p $${HOME}/.config/rofi
	cp -fv .config/rofi/* $${HOME}/.config/rofi

mc:
	mkdir -p $${HOME}/.config/mc
	cp -fv .config/mc/* $${HOME}/.config/mc/
	mkdir -p $${HOME}/.local/share/mc/skins
	cp -fv .local/share/mc/skins/* $${HOME}/.local/share/mc/skins/

mutt:
	mkdir -p $${HOME}/.mutt/cache/{bodies,headers}
	touch $${HOME}/.mutt/certificates
	cp -fv .mutt/*muttrc $${HOME}/.mutt/
	cp -fv .mutt/mailcap $${HOME}/.mutt/mailcap

git:
	cp -fv .gitconfig $${HOME}/.gitconfig
