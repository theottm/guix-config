(use-modules (guix inferior)
			 (guix channels)
             (srfi srfi-1) 	    ;for 'first'
			 (profiles base))

(define inferior-blender-2.93
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
 (append
   %python-base
  (list (car (lookup-inferior-packages inferior-blender-2.93 "blender")))
  ;; (list (specification->package "blender"))
  (map specification->package
	   (list
		;; dev
		"python-fake-bpy-module-2.91"
		;; "python-typing-extensions"

		;; core deps
		"python-numpy"
		"python-scipy"
		"python-sympy"
		"python-mpmath"
		
		;; tests
		"python-pytest"
		;; "python-pytest-timer"
		;; "python-pytest-catchlog"

		;; docs
		"make"
		"python-sphinx"
		"python-numpydoc"
		"python-sphinx-copybutton"
		"python-sphinxcontrib-fulltoc" 
		"python-sphinxcontrib-mermaid"

		;; vis
		;; "jupyter"
		"python-pythreejs"
		"python-nbmake"
		"python-nbsphinx"
		;; "python-jupyter-sphinx"
		"pandoc" ;; TODO: add pandoc to python-nbsphinx propageted inputs

		;; coverage
		"python-pytest-cov"
		))))
