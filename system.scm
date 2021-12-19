;; This is an operating system configuration template
;; for a "desktop" setup without full-blown desktop
;; environments.

(use-modules
 (gnu)
 (gnu system nss)
 ;;gccemacs
 (flat packages emacs)
 (teddd packages teddd-packages)
 ;; non free
 (nongnu packages linux)
 (nongnu system linux-initrd)
 ;; for non-free kernel pin
 (guix channels)
 (guix inferior)
 (srfi srfi-1)
 )

(use-service-modules desktop
		     xorg
		     docker
		     virtualization
		     nix
		     )

(use-package-modules bootloaders
		     shells
		     certs
		     emacs
		     emacs-xyz
		     python-xyz
		     ratpoison
		     suckless
		     wm
		     xorg
		     linux
		     audio
		     pulseaudio
		     gl
		     opencl
		     llvm
		     package-management
		     )

(operating-system

 (label (string-append "gazelle-"
		       "microcode" ;; my custom tag
		       " " (operating-system-default-label this-operating-system)))
 (host-name "gazelle")
 
 ;; non free kernel
 (kernel linux)
 ;; pin kernel to avoid rebuild
 ;; (kernel
 ;;  (let*
 ;;      ((channels
 ;;        (list (channel
 ;; 		(name 'nonguix)
 ;; 		(url "https://gitlab.com/nonguix/nonguix")
 ;; 		(commit "93f9b610301fd5ba1e8b4b4c8946b5c953b82111"))
 ;;              (channel
 ;; 		(name 'guix)
 ;; 		(url "https://git.savannah.gnu.org/git/guix.git")
 ;; 		(commit "d627fbad8f4e157103251b07d7543dd2f5647cea"))))
 ;; 	(inferior
 ;;        (inferior-for-channels channels)))
 ;;    (first (lookup-inferior-packages inferior "linux" "5.13.12"))))
 (initrd microcode-initrd)
 (firmware (cons* atheros-firmware intel-microcode %base-firmware))

 (timezone "Europe/Berlin")
 (locale "en_US.utf8")

 ;; keyboard layout
 (keyboard-layout (keyboard-layout "fr"))
 
 ;; Bootloader
 (bootloader (bootloader-configuration
              (bootloader grub-bootloader)
              (targets (list "/dev/sda"))
	      (keyboard-layout keyboard-layout)
	      ))

 ;; Assume the target root file system is labelled "root-fs",
 (file-systems (append
                (list (file-system
		       (device (file-system-label "root-fs"))
		       (mount-point "/")
		       (type "ext3"))
                      (file-system
		       (device (file-system-label "boot-fs"))
		       (mount-point "/boot")
		       (type "ext2"))
		      ;; (file-system
                      ;;  (device "/dev/sdb1")
                      ;;  (mount-point "/mnt/ihd")
                      ;;  (type "ntfs")
		      ;; 	(options "rw")
		      ;; 	(check? #f)
		      ;; 	)
		      )
                %base-file-systems))
 
 ;; (swap-space (target (file-system-label "swap-fs")))
 
 (users (cons (user-account
	       (name "teddd")
	       (comment "Theo Tyburn")
	       (group "users")
	       (supplementary-groups '("wheel" "netdev"
				       "audio" "video"
				       "lp" ;; bluetooth
				       "realtime"  ;; realtime scheduling
				       "docker"
				       ))
	       (shell (file-append zsh "/bin/zsh")))
              %base-user-accounts))

 ;; Add the 'realtime' group
 (groups (cons (user-group (system? #t) (name "realtime"))
	       %base-groups))
 
 ;; Use the "desktop" services, which include the X11
 ;; log-in service, networking with NetworkManager, and more.
 (services (append (list
		    (service nix-service-type)
		    (service qemu-binfmt-service-type
			     (qemu-binfmt-configuration
			      (platforms (lookup-qemu-platforms "arm" "aarch64"))))
		    (service docker-service-type)
		    (service slim-service-type
			     (slim-configuration
			      (display ":0")
			      (vt "vt7")
			      (theme %default-slim-theme)
			      (theme-name %default-slim-theme-name)
			      (xorg-configuration
			       (xorg-configuration
				(keyboard-layout keyboard-layout)))))
		    ;; (service slim-service-type
		    ;;          (slim-configuration
		    ;;      (display ":1")
		    ;;          (vt "vt8")
		    ;;      (theme %default-slim-theme)
		    ;;      (theme-name "0.8")
		    ;;           (xorg-configuration
		    ;;            (xorg-configuration
		    ;;             (keyboard-layout keyboard-layout)))))
		    (pam-limits-service ;; This enables JACK to enter realtime mode
		     (list
		      (pam-limits-entry "@realtime" 'both 'rtprio 99)
		      (pam-limits-entry "@realtime" 'both 'memlock 'unlimited)))
		    (bluetooth-service))
		   (modify-services %desktop-services
				    (delete gdm-service-type)
				    ;; use non-free subsitutes
				    (guix-service-type config => (guix-configuration
								  (inherit config)
								  (substitute-urls
								   (append (list "https://substitutes.nonguix.org")
									   %default-substitute-urls))
								  (authorized-keys
								   (append (list (local-file "./nonguix-signing-key.pub"))
									   %default-authorized-guix-keys)))))
		   ))

 ;; Add a bunch of window managers; we can choose one at
 ;; the log-in screen with F1.
 (packages (append (list
		    ;; window managers
		    i3-wm python-py3status
		    ;; emacs-native-comp emacs-exwm-native-comp
		    ;; terminal emulator
		    xterm
		    ;; for HTTPS access
		    nss-certs
		    ;; file system
		    ntfs-3g
		    ;; bluetooth
		    bluez
		    ;; sound
		    pulseaudio
		    ;; opencl
		    mesa-opencl
		    mesa-opencl-icd
		    opencl-icd-loader
		    ;; opencl-headers
		    ;; beignet
		    ;; libclc
		    ;; nix
		    nix
		    )
		   %base-packages))
 
 ;; Allow resolution of '.local' host names with mDNS.
 (name-service-switch %mdns-host-lookup-nss))
