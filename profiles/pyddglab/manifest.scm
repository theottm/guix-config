(specifications->manifest
 (list
  "python"
  
  "python-numpy"
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

  ;; coverage
  ;; "python-pytest-cov" ;; FIXME: collision with pytest
  ))
