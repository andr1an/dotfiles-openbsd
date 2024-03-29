all: bash ssh vim tmux x11 i3 xdg gtk mc ranger mutt git

bash:
	cp -fv .bash_profile $${HOME}/.bash_profile
	cp -fv .bashrc $${HOME}/.bashrc

ssh:
	install -d -m 0700 $${HOME}/.ssh{,/config.d}
	cp -fv .ssh/config $${HOME}/.ssh/config

vim:
	cp -fv .vimrc $${HOME}/.vimrc
	mkdir -p $${HOME}/.vim/colors
	cp -fv modules/vim-colors-solarized/colors/* $${HOME}/.vim/colors

tmux:
	cp -fv .tmux.conf $${HOME}/.tmux.conf

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
	cp -rfv bin/* $${HOME}/bin/

xdg:
	mkdir -p $${HOME}/{Documents,Downloads,Pictures/Screenshots}
	mkdir -p $${HOME}/.{config,local/share/applications,icons}
	cp -rv wallpapers $${HOME}/Pictures/
	cp -fv .config/mimeapps.list $${HOME}/.config/
	cp -fv .local/share/applications/* $${HOME}/.local/share/applications/
	cp -fv .icons/* $${HOME}/.icons/

gtk:
	mkdir -p $${HOME}/.config/gtk-3.0
	cp -rfv .config/gtk-3.0/* $${HOME}/.config/gtk-3.0/
	cp -fv .gtkrc-2.0 $${HOME}/

mc:
	mkdir -p $${HOME}/.config/mc
	cp -fv .config/mc/* $${HOME}/.config/mc/
	mkdir -p $${HOME}/.local/share/mc/skins
	cp -fv .local/share/mc/skins/* $${HOME}/.local/share/mc/skins/

ranger:
	mkdir -p $${HOME}/.config/ranger
	cp -fv .config/ranger/* $${HOME}/.config/ranger/

mutt:
	mkdir -p $${HOME}/.mutt/cache/{bodies,headers}
	touch $${HOME}/.mutt/certificates
	cp -fv .mutt/*muttrc $${HOME}/.mutt/
	cp -fv .mutt/mailcap $${HOME}/.mutt/mailcap
	cp -fv modules/mutt-colors-solarized/mutt-colors-solarized-dark-256.muttrc $${HOME}/.mutt/

git:
	cp -fv .gitconfig $${HOME}/.gitconfig
