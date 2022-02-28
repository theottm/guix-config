(list
 (channel
        (name 'guix-android)
        (url "https://framagit.org/tyreunom/guix-android.git")
        (branch "master")
        (commit "c6dbde9bde241c0f535f0fdd2629bd9960ec317d")
        (introduction
          (make-channel-introduction
            "d031d039b1e5473b030fa0f272f693b469d0ac0e"
            (openpgp-fingerprint
              "1EFB 0909 1F17 D28C CBF9  B13A 53D4 57B2 D636 EE82"))))
      (channel
        (name 'flat)
        (url "https://github.com/flatwhatson/guix-channel.git")
        (branch "master")
        (commit "ece373bcd1e00ef746fb7b104e56ab610cc4af2a")
	)
      (channel
        (name 'teddd)
        (url "/home/teddd/guix/guix-channel")
        (branch "master")
        ;; (commit "88422b5a0e4bad3c3ca88770b6f77195e68c9f7d")
	)
      (channel
        (name 'nonguix)
        (url "https://gitlab.com/nonguix/nonguix")
        (branch "master")
        (commit "37f9f8103d87a34a26a8777d3f61e800eb97e0b6")
        (introduction
          (make-channel-introduction
            "35533c763a81365e14d0b58ad262e8f88c82872c"
            (openpgp-fingerprint
              "2A39 3FFF 68F4 EF7A 3D29  12AF 6F51 20A0 22FB B2D5"))))
      (channel
        (name 'guix)
        (url "https://git.savannah.gnu.org/git/guix.git")
        (branch "master")
        ;; (commit "0dc99fd1492d0ed0101011ffb8c287289e2d7e0d")
        (introduction
          (make-channel-introduction
            "9edb3f66fd807b096b48283debdcddccfea34bad"
            (openpgp-fingerprint
             "BBB0 2DDF 2CEA F6A8 0D1D  E643 A2A0 6DF2 A33A 54FA"))))
      ;; (channel
      ;;  (name 'guixrus)
      ;;  (url "https://git.sr.ht/~whereiseveryone/guixrus")
      ;;  (introduction
      ;; 	(make-channel-introduction
      ;; 	 "7c67c3a9f299517bfc4ce8235628657898dd26b2"
      ;; 	 (openpgp-fingerprint
      ;; 	  "CD2D 5EAA A98C CB37 DA91  D6B0 5F58 1664 7F8B E551"))))
      )
