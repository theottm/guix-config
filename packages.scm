;; This "manifest" file can be passed to 'guix package -m' to reproduce
;; the content of your profile.  This is "symbolic": it only specifies
;; package names.  To reproduce the exact same profile, you also need to
;; capture the channels being used, as returned by "guix describe".
;; See the "Replicating Guix" section in the manual.

(specifications->manifest
 (list

  ;; basics (move to system ?)
  "parted"
  "openssh"
  "zip" "unzip"
  "perl"
  "git" "subversion"
  "make" "file"

  ;; shell
   "bash" "zsh"
  "fzf"
  "fd"
  "kitty" "gnome-terminal"
  "git-cal"
  "xsel"
  "the-silver-searcher" ;; ag

  ;; fonts
  "gs-fonts" "font-dejavu" "font-gnu-freefont"
  "font-adobe-source-han-sans" ;;asian fonts

  ;; desktop setup
  "redshift"
  "rclone"
  "xclip"
  "maim"
  "xrandr"
  "numlockx"
  
  ;; theme
  "xsettingsd"
  "lxappearance"
  "materia-theme" ;; theme
  "breeze-icons" ;; icons
  "mate-themes" ;; cursor

  ;; system monitoring
  "duc" "kdf"
  "htop"

  ;; apps
  "flatpak"
  "node"
  
  ;; docs
  "xpdf"
  "evince"
  "libreoffice"
  
  ;; comminication
  "telegram-desktop"

  ;; web
  "icecat" "ungoogled-chromium"
  "transmission"
  "filezilla"
  
  ;; latex
  "texlive-base"
  "texlive-amsfonts"
  "texlive-latex-amscls"
  
  ;; data
  ;; "sequeler"
  ;; "sqlite"

  ;; video
  "vlc"
  "obs"
  "ffmpeg"

  ;; image
  "gimp"
  "imagemagick"
  "gphoto2" ; mtp, ptp
  "eom"
  
  ;; music
  "pavucontrol"
  "supercollider"
  "jack"
  "qjackctl"
  "alsa-utils"

  ;; 3D
  "blender"

  ;; emacs
  "emacs"
  "emacs-pdf-tools"
  "emacs-scel"

  ;; android
  "adb"

  ;;games
  "vitetris"
  "steam"
  ))
