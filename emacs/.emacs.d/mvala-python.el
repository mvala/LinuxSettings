;; mvala's python

(require 'pymacs)
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)

(ac-ropemacs-initialize)
(add-hook 'python-mode-hook
          (lambda ()
                (add-to-list 'ac-sources 'ac-source-ropemacs)))


(setq python-remove-cwd-from-path nil)
