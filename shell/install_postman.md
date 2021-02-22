Download Postman from the site.
Move the archive to somewhere global: mv Postman-linux-x64-7.16.1.tar.gz /opt/
Extract the archive: tar xzvf Postman-linux-x64-7.16.1.tar.gz
Remove the archive: rm Postman-linux-x64-7.16.1.tar.gz
Check which directories are in the path: echo $PATH
Create a symbolic link in one of path directories: sudo ln -s /opt/Postman/Postman /usr/local/bin/postman
Create the desktop file: touch ~/.local/share/applications/postman.desktop
Edit the file with the content below.

----
[Desktop Entry]
Name=Postman
GenericName=API Client
X-GNOME-FullName=Postman API Client
Comment=Make and view REST API calls and responses
Keywords=api;
Exec=/usr/local/bin/postman
Terminal=false
Type=Application
Icon=/opt/Postman/app/resources/app/assets/icon.png
Categories=Development;Utilities;
