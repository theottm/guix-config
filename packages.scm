;; This "manifest" file can be passed to 'guix package -m' to reproduce
;; the content of your profile.  This is "symbolic": it only specifies
;; package names.  To reproduce the exact same profile, you also need to
;; capture the channels being used, as returned by "guix describe".
;; See the "Replicating Guix" section in the manual.

(specifications->manifest
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
  "gs-fonts" "font-dejavu" "font-gnu-freefont"
  "font-fantasque-sans"
  "font-adobe-source-han-sans" ;;asian fonts

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
  "flatpak"
  "nix"
  
  ;; documents
  "xpdf"
  "evince"
  "libreoffice"
  
  ;; communication
  "telegram-desktop"
  "mu"
  "offlineimap3"
  
  ;; web
  "node"
  "icecat" "ungoogled-chromium" "firefox"
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
  "emacs-pdf-tools"

  ;; android
  ;; "adb"
  ;; "kdeconnect"

  ;;games
  "vitetris"
  ;; "steam"
  ))
