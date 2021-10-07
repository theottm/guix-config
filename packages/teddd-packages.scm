(define-module (teddd-packages)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix svn-download)
  #:use-module (guix build-system texlive)
  #:use-module (guix build-system gnu)
  #:use-module (guix licenses)
  #:use-module (guix build-system python)
  #:use-module (srfi srfi-1)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages sphinx)
  )

(define-public texlive-latex-mathtools
  (package
   (name "texlive-latex-mathtools")
   (version "1.27")
   (source
    (origin
     (method svn-fetch)
     (uri (texlive-ref "latex" "mathtools"))
     (sha256
      (base32 "0429x1ia61na5j44bm6zkryz470a4yhyx247vbh2yr6nrmibb0xf"))))
   (build-system texlive-build-system)
   (arguments '(#:tex-directory "latex/mathtools"
		#:build-targets '("empheq.dtx"
				  "mathtools.dtx"
				  "mhsetup.dtx")))
   (home-page "http://www.ctan.org/pkg/mathtools")
   (synopsis "Mathematical tools to use with amsmath")
   (description
    "Mathtools provides a series of packages designed to enhance the appearance of documents containing a lot of mathematics.  The main backbone is amsmath, so those unfamiliar with this required part of the LaTeX system will probably not find the packages very useful.  Mathtools provides many useful tools for mathematical typesetting.  It is based on amsmathamsmath and fixes various deficiencies of amsmath and standard LaTeX.  It provides:  Extensible symbols, such as brackets, arrows, harpoons, etc.;  Various symbols such as \\coloneqq (:=);  Easy creation of new tag forms;  Showing equation numbers only for referenced equations;  Extensible arrows, harpoons and hookarrows;  Starred versions of the amsmath matrix environments for specifying the column alignment;  More building blocks: multlined, cases-like environments, new gathered environments;  Maths versions of \\makebox, \\llap, \\rlap etc.;  Cramped math styles; and more...  Mathtools requires mhsetupmhsetup.")
   (license lppl1.3c)))

(define-public python-sphinxcontrib-fulltoc
  (package
   (name "python-sphinxcontrib-fulltoc")
   (version "1.2.0")
   (source
    (origin
     (method url-fetch)
     (uri (pypi-uri "sphinxcontrib-fulltoc" version))
     (sha256
      (base32 "1nbwflv9szyh37yr075xhck8b4gg2c7g3sa38mfi7wv7qhpxcif8"))))
   (build-system python-build-system)
   (native-inputs
    `(("python-pbr" ,python-pbr)
      ("python-sphinx" ,python-sphinx)
      ))
   (home-page "http://sphinxcontrib-fulltoc.readthedocs.org")
   (synopsis "Include a full table of contents in your Sphinx HTML sidebar")
   (description "Include a full table of contents in your Sphinx HTML sidebar")
   (license #f))
  )

(define-public python-sphinxcontrib-mermaid
  (package
   (name "python-sphinxcontrib-mermaid")
   (version "0.7.1")
   (source
    (origin
     (method url-fetch)
     (uri (pypi-uri "sphinxcontrib-mermaid" version))
     (sha256
      (base32 "0g19bnmfksjjn9z5si94hkd9nam51hj808dn4hld2sn81ssl12ma"))))
   (build-system python-build-system)
   (native-inputs
    `(
      ;; ("python-pbr" ,python-pbr)
      ("python-sphinx" ,python-sphinx)
      ("python-docutils" ,python-docutils)
      ))
   (home-page "https://github.com/mgaitan/sphinxcontrib-mermaid")
   (synopsis "Mermaid diagrams in yours Sphinx powered docs")
   (description "Mermaid diagrams in yours Sphinx powered docs")
   (license #f))) ;; remove temporarly

(define-public texlive-latex-minted
  (package
   (name "texlive-latex-minted")
   (version "2.5")
   (source
    (origin
     (method svn-fetch)
     (uri (texlive-ref "latex" "minted"))
     (sha256
      (base32 "0mh8gv47w7vn4knahs12qffal6mmln86vh17q7a5m2gdag6jwagc"))))
   (build-system texlive-build-system)
   (arguments '(#:tex-directory "latex/minted"))
   (home-page "http://www.ctan.org/pkg/minted")
   (synopsis "Highlighted source code for LaTeX")
   (description
    "The package that facilitates expressive syntax highlighting in LaTeX using the powerful Pygments library.  The package also provides options to customize the highlighted source code output using fancyvrbfancyvrb.")
   (license lppl1.3+)))

(define-public texlive-latex-sclang-prettifier
  (package
   (name "texlive-latex-sclang-prettifier")
   (version "0.1")
   (source
    (origin
     (method svn-fetch)
     (uri (texlive-ref "latex" "sclang-prettifier"))
     (sha256
      (base32 "1nfar3p8rqh7zim3pb8r8sh6cgsdr27580rzlf26y3zsd74ycz9h"))))
   (build-system texlive-build-system)
   (arguments '(#:tex-directory "latex/sclang-prettifier"))
   (home-page "http://www.ctan.org/pkg/sclang-prettifier")
   (synopsis "Prettyprinting SuperCollider source code")
   (description
    "Built on top of the listingslistings package, the package allows effortless prettyprinting of SuperCollider source code in documents typeset with LaTeX & friends.")
   (license lppl1.3+)))
