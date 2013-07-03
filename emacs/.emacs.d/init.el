;; mvala's emacs settings
;; yum install emacs-auto-complete emacs-git emacs-global


(setq ac-auto-show-menu nil)

;; Show 0.8 second later
;;(setq ac-auto-show-menu 0.8)
;;(setq ac-auto-start 4)

;; enable mvala's base
(load-file "~/.emacs.d/mvala-base.el")

;; enable mvala's ide
(load-file "~/.emacs.d/mvala-ide.el")

;; when running in c/c++ load needed stuff
(defun mvala-c-mode-all ()
  (interactive)
  (load-file "~/.emacs.d/mvala-c-mode.el"))
(add-hook 'c-initialization-hook 'mvala-c-mode-all)
