# ansible

Repository contains Ansible playbook and roles to setup various tools and services on personal desktop.

## Roles

* Mattermost
* todo

## TODO

* write BitWarden procedure, described below, in Ansible

### Add BitWarden to Dash and favourites

Steps in bash:

1. Manually open BitWarden AppImage
2. `cd` into `mount | grep Bitwarden | cut -d' ' -f3`
3. `cp bitwarden.png ~/.local/share/icons/`
4. `cp bitwarden.desktop ~/.local/share/applications/`
5. `sudo cp ~/Bitwarden-1.30.0-x86_64.AppImage /usr/local/bin/`
6. `sudo chown root:root /usr/local/bin/Bitwarden-1.30.0-x86_64.AppImage`
7. Press Windows key to show Dash, search for Bitwarden, right click it and add to favorites.

#### TODO

1. Figure out the version -- what if you update BW? Will it Change? How to change it automatically? 
	* a startup script in that will check bitwarden installed version and change the path in .desktop with `sed`
