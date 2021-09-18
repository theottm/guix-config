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
  "git"
  "make"
  "file"

  ;; shell
  "zsh"
  "fzf"
  "fd"
  "kitty"
  "git-cal"

  ;;fonts
  "gs-fonts" "font-dejavu" "font-gnu-freefont"
  "font-adobe-source-han-sans" ;;asian fonts

  ;; desktop setup
  "xsettingsd"
  "redshift"
  "rclone"
  "lxappearance"
  "pavucontrol"
  "xclip"
  "maim"
  "xrandr"
  "numlockx"

  ;; system monitoring
  "duc" "kdf"
  "htop"

  ;; apps
  "xpdf"
  "flatpak"
  "libreoffice"
  "telegram-desktop"

  ;; web
  "icecat" "ungoogled-chromium"
  "transmission"
  "filezilla"
  
  ;; latex
  "texlive"
  
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
  "supercollider"

  ;; 3D
  "blender"

  ;; emacs
  "emacs"
  "emacs-pdf-tools"

  ;; android
  "adb"

  ;;games
  "vitetris"
  "steam"
  ))
