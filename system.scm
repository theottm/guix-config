;; This is an operating system configuration template
;; for a "desktop" setup without full-blown desktop
;; environments.

(use-modules
 (gnu)
 (gnu system nss)
 ;; non free
 (nongnu packages linux)
 (nongnu system linux-initrd)
 ;; for non-free kernel pin
 (guix channels)
 (guix inferior)
 (srfi srfi-1)
 )

(use-service-modules desktop
		     xorg)

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
		     )

(operating-system

 ;; non free
 ;; pin kernel to avoid rebuild
 ;;(kernel linux)
 ;;
 (kernel
  (let*
      ((channels
        (list (channel
               (name 'nonguix)
               (url "https://gitlab.com/nonguix/nonguix")
               (commit "4640ff56f6377a6ca3ac8b1fdaef1ebd449dce91"))
              (channel
               (name 'guix)
               (url "https://git.savannah.gnu.org/git/guix.git")
               (commit "b7d1698f7fb1f4119d29951d0059b26770e2a853"))))
       (inferior
        (inferior-for-channels channels)))
    (first (lookup-inferior-packages inferior "linux" "5.13.12"))))
 (initrd microcode-initrd)
 (firmware (list linux-firmware))
 
 (host-name "gazelle")
 (timezone "Europe/Berlin")
 (locale "en_US.utf8")

 ;; keyboard layout
 (keyboard-layout (keyboard-layout "fr"))
 
 ;; Bootloader
 (bootloader (bootloader-configuration
              (bootloader grub-bootloader)
              (target "/dev/sda")
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
		      ;; (check? #f))
		      )
                %base-file-systems))

 (users (cons (user-account
               (name "teddd")
               (comment "Theo Tyburn")
               (group "users")
               (supplementary-groups '("wheel" "netdev"
                                       "audio" "video"
				       "lp" ;; for bluetooth
				       ))
	       (shell (file-append zsh "/bin/zsh")))
              %base-user-accounts))

 ;; Add a bunch of window managers; we can choose one at
 ;; the log-in screen with F1.
 (packages (append (list
                    ;; window managers
                    i3-wm python-py3status
                    emacs emacs-exwm
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
		    )
                   %base-packages))
 
 ;; Use the "desktop" services, which include the X11
 ;; log-in service, networking with NetworkManager, and more.
 (services (cons*	    
	    (service slim-service-type
                     (slim-configuration
		      (display ":0")
                      (vt "vt7")
                      (xorg-configuration
                       (xorg-configuration
                        (keyboard-layout keyboard-layout)))))
	    ;; (service slim-service-type
            ;;          (slim-configuration
	    ;; 	      (display ":1")
            ;;           (vt "vt8")
            ;;           (xorg-configuration
            ;;            (xorg-configuration
            ;;             (keyboard-layout keyboard-layout)))))
	    (bluetooth-service)
	    (modify-services %desktop-services
			     (delete gdm-service-type))))
 
 ;; Allow resolution of '.local' host names with mDNS.
 (name-service-switch %mdns-host-lookup-nss))
