;; mvala's develop (c,c++) setting

(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-0.8.0")
(require 'yasnippet)
(yas-global-mode 1)

;; enable mvala's semantic
(load-file "~/.emacs.d/mvala-semantic.el")

;; enable mvala's root
(load-file "~/.emacs.d/mvala-root.el")

;; enable mvala's astyle
(load-file "~/.emacs.d/mvala-astyle.el")

;; c++
;;(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
