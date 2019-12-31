# metahax
I made a Gentoo Portage overlay for ebuilds that didn't seem to exist yet.

**[games-util/minigalaxy](games-util/minigalaxy)** - Simple GOG client for Linux  
http://github.com/sharkwouter/minigalaxy

To use this overlay, place the included `metahax.conf` file in `/etc/portage/repos.conf`, or create your own file with the following (substitute your own location if you like)
```
[metahax]
 location = /usr/local/portage/metahax
 sync-type = git
 sync-uri = https://github.com/metafarion/metahax.git
 auto-sync = yes`
```
Ebuilds will be then available after the next `emerge --sync`.
