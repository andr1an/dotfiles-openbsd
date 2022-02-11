all: bash ssh vim x11 i3 xdg gtk mc mutt git

bash:
	cp -fv .bash_profile $${HOME}/.bash_profile
	cp -fv .bashrc $${HOME}/.bashrc

ssh:
	install -d -m 0700 $${HOME}/.ssh{,/config.d}
	cp -fv .ssh/config $${HOME}/.ssh/config

vim:
	cp -fv .vimrc $${HOME}/.vimrc

x11:
	cp -fv .xsession $${HOME}/.xsession
	cp -fv .Xresources $${HOME}/.Xresources
	mkdir -p $${HOME}/.local/share/icons
	cp -rfv modules/Nordic/kde/cursors/Nordic-cursors/ $${HOME}/.local/share/icons/Nordic-cursors

i3:
	mkdir -p $${HOME}/.config/i3
	cp -fv .config/i3/* $${HOME}/.config/i3/
	cp -fv .i3status.conf $${HOME}/.i3status.conf
	mkdir -p $${HOME}/.config/rofi
	cp -fv .config/rofi/* $${HOME}/.config/rofi

xdg:
	mkdir -p $${HOME}/{Documents,Downloads,Pictures/Screenshots}
	cp -rv wallpapers $${HOME}/Pictures/

gtk:
	mkdir -p $${HOME}/.config
	cp -rfv .config/gtk-3.0 $${HOME}/.config/
	cp -fv .gtkrc-2.0 $${HOME}/

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
