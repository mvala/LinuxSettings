;; mvala's emacs settings
;; yum install emacs-auto-complete emacs-git emacs-global
;; for python (TODO)
;; yum install emacs-pymacs python-ropemacs

;; enable mvala's base
(load-file "~/.emacs.d/mvala-base.el")

;; enable mvala's ide
(load-file "~/.emacs.d/mvala-ide.el")

;; when running in c/c++ load needed stuff
;; TODO test for c mode and load it only once
(defun mvala-c-mode-all ()
  (interactive)
  (load-file "~/.emacs.d/mvala-c-mode.el"))
(add-hook 'c-mode-common-hook 'mvala-c-mode-all)

;; when runnign in python load needed stuff
;; TODO test for c mode and load it only once
(defun mvala-py-mode-all ()
  (load-file "~/.emacs.d/mvala-py-mode.el"))
(add-hook 'python-mode-hook 'mvala-py-mode-all)
