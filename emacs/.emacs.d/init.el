;; mvala's emacs settings
;; yum install emacs-auto-complete emacs-git emacs-global
;; for python (TODO)
;; yum install emacs-pymacs python-ropemacs

(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;; enable mvala's base
(load-file "~/.emacs.d/mvala-base.el")

;; enable mvala's semantic
(load-file "~/.emacs.d/mvala-semantic.el")

;; enable mvala's root
(load-file "~/.emacs.d/mvala-root.el")

;; enable mvala's ide
(load-file "~/.emacs.d/mvala-ide.el")

;; enable mvala's astyle
(load-file "~/.emacs.d/mvala-astyle.el")

;; c++
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; k&r style
;;(setq c-default-style "k&r")
;;(setq c-basic-offset 4)
;;(setq-default indent-tabs-mode nil)

;;(global-linum-mode 1)

