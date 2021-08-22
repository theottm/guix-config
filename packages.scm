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
  "zip"
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
  "dbxfs"
  "lxappearance"
  "pavucontrol"
  "xclip"
  "maim"
  ;; apps
  "libreoffice"
  "telegram-desktop"
  "icecat"
  "ungoogled-chromium"
  "gimp"
  "vlc"
  ;; arts
  "supercollider"
  "blender"
  ;; emacs
  "emacs-pdf-tools"
  ))
