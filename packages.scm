(use-modules (guix inferior)
			 (guix channels)
             (srfi srfi-1))   ;for 'first'

(define inferior-blender-2.90
  (inferior-for-channels
   (list (channel
          (name 'guix)
          (url "https://git.savannah.gnu.org/git/guix.git")
          (branch "master")
          (commit "48d38125c20daa7d89f25245e4463df41e6c957f")
          (introduction
           (make-channel-introduction
            "9edb3f66fd807b096b48283debdcddccfea34bad"
            (openpgp-fingerprint
             "BBB0 2DDF 2CEA F6A8 0D1D  E643 A2A0 6DF2 A33A 54FA")))))))

(packages->manifest
 (cons (first (lookup-inferior-packages inferior-blender-2.90 "blender"))
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
			 ;; "flatpak"
			 ;; "nix"
			 
			 ;; documents
			 "emacs-pdf-tools"
			 "xpdf"
			 "evince"
			 "libreoffice"
			 
			 ;; communication
			 "emacs-telega"
			 "mu"
			 "offlineimap3"
			 
			 ;; web
			 ;; "node"
			 ;; "icecat"
			 "ungoogled-chromium"
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
			 ;; "steam"
			 ))))
