(use-modules (gnu home)
	     (gnu home-services)
	     (gnu home-services ssh)
	     (gnu home-services shells)
	     (gnu home-services files)
	     (gnu services)
	     (gnu packages admin)
             (guix gexp))


(home-environment
 (packages
  (list
   htop
   ;; basics (move to system ?)
   parted
   openssh
   zip
   perl
   git
   ;; shell tools
   zsh
   fzf
   fd
   kitty
   ;; desktop setup
   xsettingsd
   lxappearance
   font-dejavu
   ;; desktop control
   redshift
   pavucontrol
   ;; apps
   telegram-desktop
   icecat
   ungoogled-chromium
   gimp
   vlc
   ;; arts
   supercollider
   blender
   ;; emacs
   emacs-pdf-tools
   emacs-all-the-icons
   ))
 
 (services
  (list
   (service home-bash-service-type
            (home-bash-configuration
             (guix-defaults? #t)
             (bash-profile '("\
export HISTFILE=$XDG_CACHE_HOME/.bash_history"))))
   
   ;; (simple-service 'test-config
   ;;                 home-files-service-type
   ;;                 (list `("config/test.conf"
   ;;                         ,(plain-file "tmp-file.txt"
   ;;                                      "the content of ~/.config/test.conf"))))
   
   (service home-ssh-service-type
	    (home-ssh-configuration
	     (extra-config
	      (list
	       (ssh-host "savannah"
			 '((compression . #f))))))))))
