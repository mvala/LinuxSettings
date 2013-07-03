;; emacs-ide settings

(when (display-graphic-p)
  (when (fboundp 'winner-mode)
    (winner-mode 1))
  (if (file-exists-p ".emacs-ide-project.cfg")
      (progn
	(add-to-list 'load-path "~/.emacs.d/site-lisp/")
	(require 'eide)
	(eide-start)
	(load-file (concat (file-name-directory default-directory) "etc/emacs-ide-extra.el"))
	(if window-system
	    (set-frame-size (selected-frame) 170 45))

	)))

