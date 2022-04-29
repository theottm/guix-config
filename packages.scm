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

	   ;; nextcloud sync.scm dependencies (TODO: define in a profile)
	   "guile"
	   "guile-threading-macros"
	   
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

	   ;; package management
	   ;; "flatpak"
	   ;; "nix"
	   "emacs-guix"
	   
	   ;; documents
	   "emacs-pdf-tools"
	   "pdfgrep"
	   "xournalpp"
	   "evince" ;; "okular"
	   "libreoffice"

	   ;; cloud
	   "nextcloud-client"
	   ;; "rclone"
	   
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
	   ;; "texlive-base"
	   ;; ;; math
	   ;; "texlive-txfonts"
	   ;; "texlive-amsfonts"
	   ;; "texlive-latex-amscls"
	   ;; ;; "texlive-latex-mathtools"
	   ;; ;; org-mode export
	   ;; "texlive-cm"
	   ;; "texlive-latex-graphics"
	   ;; "texlive-latex-oberdiek"
	   ;; "texlive-latex-wrapfig"
	   ;; "texlive-generic-ulem"
	   ;; "texlive-latex-capt-of"
	   ;; "texlive-latex-hyperref"
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
	   "docker-compose"
	   
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
	   "emacs-xwidgets-native-comp"
	   "emacs-xwidgets-exwm-native-comp"

	   ;; android
	   ;; "adb"
	   ;; "kdeconnect"

	   ;;games
	   "vitetris"
	   "nudoku"
	   ;; "steam"
	   )))
