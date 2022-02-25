(list (channel
        (name 'guix)
        (url "https://git.savannah.gnu.org/git/guix.git")
        (branch "master")
        (commit "5b71034fe81c2639bb7a9121146ddc551f6067f9")
        (introduction
          (make-channel-introduction
            "9edb3f66fd807b096b48283debdcddccfea34bad"
            (openpgp-fingerprint
              "BBB0 2DDF 2CEA F6A8 0D1D  E643 A2A0 6DF2 A33A 54FA"))))
      (channel
        (name 'nonguix)
        (url "https://gitlab.com/nonguix/nonguix")
        (branch "master")
        (commit "35533c763a81365e14d0b58ad262e8f88c82872c")
        (introduction
          (make-channel-introduction
            "35533c763a81365e14d0b58ad262e8f88c82872c"
            (openpgp-fingerprint
              "2A39 3FFF 68F4 EF7A 3D29  12AF 6F51 20A0 22FB B2D5"))))
      (channel
        (name 'teddd)
        (url "/home/teddd/guix/guix-channel")
        (branch "master")
        ;; (commit "51af3f0f3ee1f0ee74b68490e4f8327135987c07")
	)
      (channel
        (name 'flat)
        (url "https://github.com/flatwhatson/guix-channel.git")
        (branch "master")
        (commit "ece373bcd1e00ef746fb7b104e56ab610cc4af2a")
	)
      ;; (channel
      ;;   (name 'guix-android)
      ;;   (url "https://framagit.org/tyreunom/guix-android.git")
      ;;   (introduction
      ;;     (make-channel-introduction
      ;;       "d031d039b1e5473b030fa0f272f693b469d0ac0e"
      ;;       (openpgp-fingerprint
      ;;         "1EFB 0909 1F17 D28C CBF9  B13A 53D4 57B2 D636 EE82"))))
	  ;; (channel
	  ;;  (name 'guixrus)
	  ;;  (url "https://git.sr.ht/~whereiseveryone/guixrus")
	  ;;  (introduction
	  ;; 	(make-channel-introduction
	  ;; 	 "7c67c3a9f299517bfc4ce8235628657898dd26b2"
	  ;; 	 (openpgp-fingerprint
	  ;; 	  "CD2D 5EAA A98C CB37 DA91  D6B0 5F58 1664 7F8B E551"))))
      )
