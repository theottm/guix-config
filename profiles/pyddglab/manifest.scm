(specifications->manifest
 (list
  ;; dev
  "python"
  "python-ipython"
  "python-language-server"
  "python-fake-bpy-module-2.91"

  ;; core deps
  ;; "python-numpy"
  "python-scipy"
  "python-sympy"
  "python-mpmath"
  
  ;; tests
  "python-pytest"
  ;; "python-pytest-timer"
  ;; "python-pytest-catchlog"

  ;; docs
  "python-sphinx"
  "python-numpydoc"
  "python-sphinx-copybutton"
  "python-sphinxcontrib-fulltoc" 
  "python-sphinxcontrib-mermaid"

  ;; vis
  "jupyter"
  "python-pythreejs"
  "python-nbmake"

  ;; coverage
  ;; "python-pytest-cov" ;; FIXME: collision with pytest
  ))
