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
  ;; shell
  "zsh"
  "fzf"
  "fd"
  "kitty"
  ;; desktop setup
  "xsettingsd"
  "font-dejavu"
  "redshift"
  "rclone"
  "lxappearance"
  "pavucontrol"
  "xclip"
  "maim"
  "xrandr"
  ;; system monitoring
  "duc" "kdf"
  "htop"
  ;; apps
  "xpdf"
  "flatpak"
  "libreoffice"
  "telegram-desktop"
  "icecat" "ungoogled-chromium"
  "gimp"
  ;; data
  "sequeler"
  ;; video
  "vlc"
  "obs"
  ;; music
  "supercollider"
  ;; 3D
  "blender"
  ;; emacs
  "emacs-pdf-tools"
  ;;games
  "vitetris"
  ))
