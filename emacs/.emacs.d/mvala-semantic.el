;; semantic settings for c/c++

(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-decoration-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-local-symbol-highlight-mode)

;; enable semantic mode
(require 'semantic/ia)
(semantic-mode 1)

(add-hook 'c-mode-common-hook '(lambda ()
          (add-to-list 'ac-omni-completion-sources
                       (cons "\\." '(ac-source-semantic)))
          (add-to-list 'ac-omni-completion-sources
                       (cons "->" '(ac-source-semantic)))
          ;;(setq ac-sources '(ac-source-semantic ac-source-yasnippet))
	  (add-to-list 'ac-sources 'ac-source-semantic))
	  )

;; (defun mvala-c-mode-hook ()
;;   (local-set-key "." 'semantic-complete-self-insert)
;;   (local-set-key ">" 'semantic-complete-self-insert)
;;   ;;(add-to-list 'ac-sources 'ac-source-gtags)
;;   (add-to-list 'ac-sources 'ac-source-semantic))
;; ;;(add-hook 'c-mode-common-hook 'mvala-c-mode-hook)

(defun mvala-include-reload ()
  "Reload c/c++ include files"
  (interactive)
  (semantic-decoration-unparsed-include-parse-all-includes))

;;(global-set-key "\C-c\t" 'semantic-analyze-current-context)
