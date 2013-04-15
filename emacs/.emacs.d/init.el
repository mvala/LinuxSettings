;; remove startup page
(setq inhibit-startup-message t)

;; save backups to /tmp/.emacs_saves
(setq backup-directory-alist `(("." . "/tmp/.emacs_saves")))

;; add snippets
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-0.8.0/")
(require 'yasnippet)
(yas/global-mode 1)

;; EDE
(global-ede-mode 1)                      ; Enable the Project management system
;;(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion
;;(require 'semantic/ia)
;;(require 'semantic/bovine/gcc)

;;(semantic-add-system-include "~/git/zmqprf/base" 'c-mode)
;;(semantic-add-system-include "~/git/zmqprf/src" 'c-mode)

(defun my-c-mode-cedet-hook ()
 (local-set-key "." 'semantic-complete-self-insert)
 (local-set-key ">" 'semantic-complete-self-insert))
(add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)

;; intend
(setq c-default-style "k&r" c-basic-offset 4)
(setq-default indent-tabs-mode nil)
