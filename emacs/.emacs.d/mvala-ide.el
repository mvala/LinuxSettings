;; emacs-ide settings
(defvar eide-proj-dir (file-name-directory default-directory))
(when (display-graphic-p)
  (when (fboundp 'winner-mode)
    (winner-mode 1))
  (if (file-exists-p ".emacs-ide-project.cfg")
      (progn
        (add-to-list 'load-path "~/.emacs.d/site-lisp/")
        (require 'eide)
        (eide-start)
        (load-file (concat (file-name-directory default-directory) "etc/emacs-ide-extra.el"))
        (setq eide-proj-dir (file-name-directory default-directory))
	(custom-set-variables
	 ;; custom-set-variables was added by Custom.
	 ;; If you edit it by hand, you could mess it up, so be careful.
	 ;; Your init file should contain only one such instance.
	 ;; If there is more than one, they won't work right.
	 '(eide-custom-font-height 100))
        )))

