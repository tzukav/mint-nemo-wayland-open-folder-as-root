# mint-nemo-wayland-open-folder-as-root
As the title says, this is just an alternative of linux mint's nemo 'Open as Root' folder action, which is not working as expected on the wayland display server.
On wayland, 'Open as Root' just open a remote 'admin://' protocol, with less privileges than root.
Like what you can do in it is just read.

With this action you can create, delete, paste, everything... like a normal root user on x11.

The only downside? Without a terminal execution of pkexec, the wayland server crashes... so yeah... you will have a terminal open all the time you are inside the nemo root... 

If I'm gonna find an alternative in the future, imma edit this repo. 

Or maybe wayland or linux mint team will find a solution.

But for now, this is a working alternative.

This is a known 'bug' of the wayland display server.
See https://forums.linuxmint.com/viewtopic.php?t=291551
https://wiki.archlinux.org/title/Running_GUI_applications_as_root

```bash
git clone https://github.com/tzukav/mint-nemo-wayland-open-folder-as-root.git && mv mint-nemo-wayland-open-folder-as-root/* ~/.local/share/nemo/actions/ && rm -rf mint-nemo-wayland-open-folder-as-root && chmod +x ~/.local/share/nemo/actions/open_as_root.sh
```
