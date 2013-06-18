
(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-decoration-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-local-symbol-highlight-mode)

;; enable semantic mode
(semantic-mode 1)

(defun mvala-c-mode-hook ()
  (local-set-key "." 'semantic-complete-self-insert)
  (local-set-key ">" 'semantic-complete-self-insert)
  (add-to-list 'ac-sources 'ac-source-gtags)
  (add-to-list 'ac-sources 'ac-source-semantic))
(add-hook 'c-mode-common-hook 'mvala-c-mode-hook)

(defun mvala-include-reload ()
  "Reload c/c++ include files"
  (interactive) ;; working with M-x
  (semantic-decoration-unparsed-include-parse-all-includes))

(global-set-key "\C-c\t" 'semantic-analyze-current-context)

;; disable semantic in all non C/C++ buffers
(add-to-list 'semantic-inhibit-functions
	     (lambda () (not (member major-mode '(c-mode c++-mode)))))

(add-hook 'c-mode-common-hook
	  (lambda ()
	    (unless (and (featurep 'semantic/ia)
			 ;;(featurep 'semantic/sb)
			 ;;(featurep 'semantic/ia-sb)
			 )
	      (load-library "semantic/ia")
	      ;;(load-library "semantic/sb")
	      ;;(load-library "semantic/ia-sb")
	      )
	    (define-key c-mode-base-map (kbd "C-c ?") 'semantic-ia-complete-symbol)
	    (define-key c-mode-base-map (kbd "C-c t") 'semantic-ia-complete-tip)
	    (define-key c-mode-base-map (kbd "C-c v") 'semantic-ia-show-variants)
	    (define-key c-mode-base-map (kbd "C-c d") 'semantic-ia-show-doc)
	    (define-key c-mode-base-map (kbd "C-c s") 'semantic-ia-show-summary)
	    ;; for semantic imenu
	    (setq imenu-create-index-function 'semantic-create-imenu-index)
	    (imenu-add-to-menubar "C++-Tags")))
