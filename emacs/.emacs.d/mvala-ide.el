(when (fboundp 'winner-mode)
  (winner-mode 1))

(when (display-graphic-p)
  (if (file-exists-p ".emacs-ide-project.cfg")
      (progn
	(add-to-list 'load-path "~/.emacs.d/site-lisp/eide/")
	(require 'eide)
	(eide-start)
	(load-file (concat (file-name-directory default-directory) "etc/emacs-ide-extra.el"))
	)))

