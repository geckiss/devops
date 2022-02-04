# ansible

Repository contains Ansible playbook and roles to setup various tools and services on personal desktop.

## Roles

* Mattermost
* todo

## TODO

* add a `fixes`, `improvements` roles (or just `misc`)
* write BitWarden procedure, described below, in Ansible

### Add BitWarden to Dash and favourites

**Steps in bash:**

1. Manually open BitWarden AppImage
2. `cd` into `mount | grep Bitwarden | cut -d' ' -f3`
3. `cp bitwarden.png ~/.local/share/icons/`
4. `cp bitwarden.desktop ~/.local/share/applications/`
5. `sudo cp ~/Bitwarden-1.30.0-x86_64.AppImage /usr/local/bin/`
6. `sudo chown root:root /usr/local/bin/Bitwarden-1.30.0-x86_64.AppImage`
7. Press Windows key to show Dash, search for Bitwarden, right click it and add to favorites.

**Steps in human:**

https://askubuntu.com/questions/1311600/add-an-appimage-application-to-the-top-menu-bar


1. Make sure the AppImage is running.
2. Using the command mount in a terminal, find out where the AppImage is mounted in your file system (e.g. /tmp/.mount_BitwarcQMgmy).
3. Navigate to the folder where the AppImage is mounted using your file manager. In most cases, you will find icons there and a .desktop launcher, in the main folder or in a subfolder.
4. Copy the icon file to the folder .local/share/icons in your home folder.
5. Copy the .desktop file to the folder .local/share/applications in your home folder.
6. Open the copy of the .desktop file you created, and edit the Exec= line (and also the TryExec=line if present) to include the full pathname of your AppImage. 7. Check on the Icon= line if it corresponds with the basename of the icon file you copied (just the basename, no need for the extension). If needed, update. You can also provide a full path to the specific icon file.


#### TODO

1. Figure out the version -- what if you update BW? Will it Change? How to change it automatically? 
	* a startup script in that will check bitwarden installed version and change the path in .desktop with `sed`
