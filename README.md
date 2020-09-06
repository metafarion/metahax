# Metahax
I made a Gentoo Portage overlay and some ebuilds that didn't seem to exist yet.  It's total haxxx.


## Installation ##
To use this overlay, download and run **[this setup script](https://raw.githubusercontent.com/metafarion/metahax/master/setup-overlay.sh)**.

Alternatively, you can place the [metahax.conf](https://raw.githubusercontent.com/metafarion/metahax/master/metahax.conf) file in `/etc/portage/repos.conf`, create the directory `/var/db/repos/metahax`, and run `emerge --sync`.

NOTE: All ebuilds in this overlay will be masked ~x86/~amd64 until quite a lot of user testing happens.  You'll have to add them individually to `/etc/portage/package.accept_keywords` to install them.  
(See also: https://wiki.gentoo.org/wiki/ACCEPT_KEYWORDS)

## Ebuilds in this overlay ##

**[sys-fs/fuse-ext2](sys-fs/fuse-ext2)** - FUSE module to mount ext2, ext3, and ext4 file system devices or images  
http://github.com/alperakcan/fuse-ext2

**[net-misc/insync-bin](net-misc/insync-bin)** - Full-featured sync client for Google Drive and OneDrive  
http://www.insynchq.com  

**[games-util/minigalaxy](games-util/minigalaxy)** - Simple GOG client for Linux  
http://github.com/sharkwouter/minigalaxy  

**[media-sound/mympd](media-sound/mympd)** - myMPD is a standalone and mobile friendly web-based MPD client 
https://github.com/jcorporation/myMPD

**[net-vpn/networkmanager-sstp](net-vpn/networkmanager-sstp)** - NetworkManager plugin for sstp-client: A client for the proprietary Microsoft Secure Socket Tunneling Protocol(SSTP)  
https://sourceforge.net/projects/sstp-client

**[gnome-extra/nm-applet](gnome-extra/nm-applet)** - Legacy version of the Gnome Network Manager Applet that provides deprecated libnm-gtk for packages that still need it (like net-vpn/networkmanager-sstp)
https://wiki.gnome.org/Projects/NetworkManager

**[app-crypt/nwipe](app-crypt/nwipe)** - A fork of dwipe from Darik's Boot and Nuke (DBAN) for secure disk erasure
https://github.com/martijnvanbrummelen/nwipe

**[app-text/pdfchain](app-text/pdfchain)** - Graphical user interface for the PDF Toolkit (PDFtk)  
http://pdfchain.sourceforge.net
