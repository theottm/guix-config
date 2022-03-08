(use-modules (profiles base))

(packages->manifest
 (append
  %python-base
  (map specification->package
	   (list
		"python-numpy"
		"python-scipy"
		"python-sparse"
		"python-scikit-image"
		"python-matplotlib"
		))))
