;; mvala's emacs settings
;; yum install emacs-auto-complete emacs-pymacs python-ropemacs emacs-git

;; remove startup page
(setq inhibit-startup-message t)

;; save backups to /tmp/.emacs_saves
;;(setq backup-directory-alist `(("." . "/tmp/.emacs_saves")))
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; enable auto complete
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)

;; add snippets
;;(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-0.8.0/")
;;(require 'yasnippet)
;;(yas/global-mode 1)

;; k&r style
(setq c-default-style "k&r" c-basic-offset 4)
(setq-default indent-tabs-mode nil)

;; enable cedet
(load-file "~/.emacs.d/mvala-cedet.el")
;; enable cmake
(load-file "~/.emacs.d/mvala-cmake.el")
;; enable python
(load-file "~/.emacs.d/mvala-python.el")


;; mvala's project zmqprf
(ede-cpp-root-project "zmqprf"
                      :name "ZeroMQ PROOF"
                      :file "~/git/zmqprf/CMakeLists.txt"
                      :include-path '("/base"
                                      "/src"
                                      )
                      )

