(define-module (profiles base))
(use-modules (gnu packages))

(define-public %python-base
  (map specification->package
	   (list
		"python"
		"python-ipython"
		"jupyter"
		"python-lsp-server"
		"python-pytest"
		)))
