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

		     ;; docker
		     docker
		     virtualization

		     ;; nix
		     nix
		     )

(use-package-modules bootloaders
		     shells
		     certs
		     ;; emacs
		     ;; emacs-xyz
		     python-xyz
		     ;; ratpoison
		     suckless
		     wm
		     xorg
		     linux
		     audio
		     pulseaudio

		     ;; opencl dependencies
		     ;; gl
		     ;; opencl
		     ;; llvm

		     ;; nix
		     package-management
		     )


(define* (storage-fs-subvolume subvolume mt-point
			       #:key needed-for-boot (deps '()))
  (file-system (device (file-system-label "storage-fs"))
	       (mount-point mt-point)
	       (type "btrfs")
	       (options (string-append "subvol=" subvolume))
	       (needed-for-boot? needed-for-boot)
	       (dependencies deps)))

(define %storage-file-systems
  (list
   (storage-fs-subvolume "docker" "/var/lib/docker")
   (storage-fs-subvolume "nix" "/nix")
   (storage-fs-subvolume "data" "/data")
   ))

(define %gazelle-file-systems
  (let* ((boot-fs (file-system (device (file-system-label "boot-fs"))
			       (mount-point "/boot")
			       (type "ext2")))
	 (root-fs (file-system (device (file-system-label "root-fs"))
			       (mount-point "/")
			       (type "ext3")))
	 (store-fs (storage-fs-subvolume "store" "/gnu/store"
					 #:needed-for-boot #t
					 #:deps (list root-fs)))
	 (storage-fs %storage-file-systems))
    (append (list boot-fs root-fs
		  store-fs
		  ) storage-fs)))

(operating-system

  (label (string-append "gazelle:"
			"store-on-btrfs" ;; my custom tag
			" " (operating-system-default-label this-operating-system)))
  (host-name "gazelle")
  
  ;; non free kernel
  (kernel linux)
  (initrd microcode-initrd)
  (firmware (cons* atheros-firmware intel-microcode %base-firmware))
  ;; (kernel-loadable-modules (list v4l2loopback-linux-module))

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
		 %gazelle-file-systems
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
		     ;; nix
		     (service nix-service-type)
		     
		     ;; docker
		     (service qemu-binfmt-service-type
		    	      (qemu-binfmt-configuration
		    	       (platforms (lookup-qemu-platforms "arm" "aarch64"))))
		     (service docker-service-type)

		     ;; slim display manager
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

		     ;; jack
		     (pam-limits-service ;; This enables JACK to enter realtime mode
		      (list
		       (pam-limits-entry "@realtime" 'both 'rtprio 99)
		       (pam-limits-entry "@realtime" 'both 'memlock 'unlimited)))

		     ;; bluetooth
		     (bluetooth-service))
		    (modify-services %desktop-services

		      ;; remove gdm to use slim
		      (delete gdm-service-type)
		      
		      ;; non-free subsitutes
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

		     ;; emacs
		     ;; emacs-native-comp emacs-exwm-native-comp
		     
		     ;; terminal emulator
		     xterm
		     
		     ;; for HTTPS access
		     nss-certs
		     
		     ;; file systems
		     ntfs-3g
		     btrfs-progs
		     
		     ;; bluetooth
		     bluez
		     
		     ;; sound
		     pulseaudio
		     
		     ;; opencl
		     ;; mesa-opencl
		     ;; mesa-opencl-icd
		     ;; opencl-icd-loader
		     ;; opencl-headers
		     ;; beignet
		     ;; libclc
		     
		     ;; nix
		     nix
		     )
		    %base-packages))
  
  ;; Allow resolution of '.local' host names with mDNS.
  (name-service-switch %mdns-host-lookup-nss))
