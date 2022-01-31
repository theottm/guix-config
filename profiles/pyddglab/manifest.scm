(specifications->manifest
 (list
  ;; dev
  "python"
  "python-ipython"
  "python-lsp-server"
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
  "jupyter"
  "python-pythreejs"
  "python-nbmake"
  "python-nbsphinx"
  ;; "python-jupyter-sphinx"
  "pandoc" ;; TODO: add pandoc to python-nbsphinx propageted inputs

  ;; coverage
  "python-pytest-cov"
  ))
