(use-modules (profiles base))

(packages->manifest
 (append %python-base
		 (map specification->package
			  (list
			   "python-beautifulsoup4"
			   "python-mechanize"
			   ;; "icecat"
			   "python-selenium"
			   ;; "r-wdman"
			   ;; "python-pandas"
			   ))))
