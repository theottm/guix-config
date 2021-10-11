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
  "xdg-utils"
  
  ;; theme
  "xsettingsd"
  "lxappearance"
  "materia-theme" ;; theme
  "breeze-icons" ;; icons
  "mate-themes" ;; cursor

  ;; system monitoring
  "duc" "kdf"
  "htop"
  "glances"

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
  "curl"

  ;; spelling
  "hunspell"
  "hunspell-dict-de"
  "hunspell-dict-fr"
  "hunspell-dict-en"
  
  ;; latex
  "texlive-base"
  ;; math
  "texlive-txfonts"
  "texlive-amsfonts"
  "texlive-latex-amscls"
  "texlive-latex-mathtools"
  ;; org-mode export
  "texlive-cm"
  "texlive-latex-graphics"
  "texlive-latex-oberdiek"
  "texlive-latex-wrapfig"
  "texlive-generic-ulem"
  "texlive-latex-capt-of"
  "texlive-latex-hyperref"
  "texlive-cm-super"
  "texlive-fonts-ec"
  
  ;; data
  ;; "sequeler"
  ;; "sqlite"

  ;; language servers
  ;; TODO:"python-language-server"
  
  ;; docker
  "docker"
  "docker-cli"
  "containerd"
  
  ;; video
  "vlc"
  "obs"
  "ffmpeg"

  ;; image
  "gimp"
  "imagemagick"
  "gphoto2" ; mtp, ptp
  "imv"
  
  ;; audio
  "pavucontrol"
  "blueman"
  "supercollider"
  "emacs-scel"
  "jack"
  "qjackctl"
  "alsa-utils"
    
  ;; 3D
  "blender"
  "gpick"

  ;; emacs
  "emacs"
  "emacs-pdf-tools"

  ;; android
  "adb"
  "kdeconnect"

  ;;games
  "vitetris"
  "steam"
  ))
