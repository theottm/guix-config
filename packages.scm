(packages->manifest
 (map specification->package
	  (list
	   ;; disk
	   ;; "parted"

	   ;; scripting
	   "perl" ;; TODO: add perl as propagated input for fzf

	   ;; building
	   ;; "make"

	   ;; files
	   "zip" "unzip" "p7zip"
	   "file"
	   "rsync"

	   ;; shell
	   "bash" "zsh"
	   "fzf"
	   "fd"
	   "kitty" "gnome-terminal" ;; TODO: add kitty-themes
	   "xsel"
	   "the-silver-searcher" ;; ag
	   "eless"

	   ;; security
	   "openssh"
	   "gnupg"
	   "pinentry"

	   ;; fonts
	   "font-ghostscript" "font-dejavu" "font-gnu-freefont" ;; basics
	   "font-fantasque-sans" ;; pretty monospace font
	   "font-adobe-source-han-sans" ;; asian fonts
	   "font-openmoji" ;; emojis

	   ;; desktop setup
	   "redshift"
	   "xclip"
	   "maim"
	   "xrandr"
	   "numlockx"
	   "xdg-utils"
	   "clipnotify"
	   
	   ;; theme
	   "xsettingsd"
	   "lxappearance" ;; gtk
	   "qt5ct" ;; qt
	   "materia-theme" ;; theme
	   "breeze-icons" ;; icons
	   "mate-themes" ;; cursor

	   ;; system monitoring
	   "duc" "kdf"
	   "htop"
	   "glances"
	   "lsof"

	   ;; guix
	   "emacs-guix"
	   "graphviz"
	   
	   ;; other package managers
	   "nix"
	   "flatpak"
	   "snap"

	   ;; cloud
	   "nextcloud-client"
	   ;; "rclone"
	   ;; nextcloud sync.scm dependencies (TODO: define in a profile)
	   "guile"
	   "guile-threading-macros"

	   ;; anki
	   "xhost" ;; required by anki-docker
	   "pandoc" ;; required by anki-org. TODO: guix package
	   
	   ;; documents
	   "emacs-pdf-tools"
	   "pdfgrep"
	   "xournalpp"
	   "evince" ;; "okular"
	   "libreoffice"
	   "texinfo"
	   
	   ;; communication
	   "matterbridge"
	   "emacs-telega"
	   "mu"
	   "offlineimap3"
	   
	   ;; web
	   ;; "node"
	   ;; "filezilla"
	   "curl"
	   "transmission"
	   "openvpn"

	   ;; browsers
	   "icecat"
	   "ungoogled-chromium"
	   "firefox"
	   ;; nyxt and dependencies TODO: pack in a package
	   "nyxt"
	   "gst-libav"
	   "gst-plugins-base"
	   "gst-plugins-good"
	   "gst-plugins-bad"
	   "gst-plugins-ugly"

	   ;; spelling
	   "hunspell"
	   "hunspell-dict-de"
	   "hunspell-dict-fr"
	   "hunspell-dict-en"
	   
	   ;; ;; latex
	   ;; packaging
	   "subversion" ;; required for guix import texlive. TODO: move to guix-packaging profile
	   ;; basics
	   "texlive-base"
	   "texlive-grfext"
	   ;; math
	   "texlive-txfonts"
	   "texlive-amsfonts"
	   "texlive-latex-amscls"
	   "texlive-latex-mathtools"
	   ;; planner.tex
	   "texlive-latex-koma-script"
	   "texlive-latex-geometry"
	   "texlive-pgf"
	   ;; org-mode export
	   "texlive-cm"
	   "texlive-latex-graphics"
	   "texlive-latex-oberdiek"
	   "texlive-latex-wrapfig"
	   "texlive-generic-ulem"
	   "texlive-latex-capt-of"
	   "texlive-latex-hyperref"
	   ;; "texlive-cm-super"
	   ;; "texlive-fonts-ec"

	   ;; version control
	   "git"
	   ;; "git-cal"
	   ;; "subversion"
	   
	   ;; data
	   ;; "sequeler"
	   ;; "sqlite"
	   
	   ;; docker
	   "docker"
	   "docker-cli"
	   "containerd"
	   ;; "docker-compose" ;; doesn’t build
	   
	   ;; video
	   "vlc" "mplayer"
	   "obs"
	   "ffmpeg"

	   ;; image
	   "gimp"
	   "imagemagick"
	   "imv"
	   ;; "gphoto2" ; mtp, ptp
	   "guvcview"
	   
	   ;; audio
	   "pavucontrol"
	   "pulseaudio"
	   "blueman"
	   "alsa-utils"
	   
	   ;; 3D
	   "blender"
	   ;; "gpick"
	   "glslviewer@1.7.0"

	   ;; emacs
	   "emacs-native-comp"
	   "emacs-exwm-native-comp"

	   ;; android
	   ;; "adb"
	   ;; "kdeconnect"

	   ;;games
	   "vitetris"
	   "nudoku"
	   ;; "steam"
	   )))
