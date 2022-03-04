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

	   ;; desktop setup
	   "redshift"
	   "rclone"
	   "xclip"
	   "maim"
	   "xrandr"
	   "numlockx"
	   "xdg-utils"
	   
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
	   
	   ;; documents
	   "emacs-pdf-tools"
	   "xpdf"
	   "evince"
	   "libreoffice"
	   
	   ;; communication
	   "matterbridge"
	   "emacs-telega"
	   "mu"
	   "offlineimap3"
	   
	   ;; web
	   ;; "node"
	   ;; "icecat"
	   ;; "ungoogled-chromium"
	   "firefox"
	   "transmission"
	   ;; "filezilla"
	   "curl"

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
	   ;; "supercollider"
	   ;; "emacs-scel"
	   ;; "jack"
	   ;; "qjackctl"
	   
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
