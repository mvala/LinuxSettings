;; remove startup page
(setq inhibit-startup-message t)

;; show parent bracket
(show-paren-mode 1)

;; save backups to /tmp/.emacs_saves
;;(setq backup-directory-alist `(("." . "/tmp/.emacs_saves")))
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;;(global-linum-mode 1)

;; disable vc
;;(setq vc-handled-backends nil)

;; enable autocomplete
(require 'auto-complete-config)

(set-default 'ac-sources
             '(ac-source-abbrev
               ac-source-dictionary
               ac-source-yasnippet
               ac-source-words-in-buffer
               ac-source-words-in-same-mode-buffers
               ac-source-semantic))

(ac-config-default)
(global-auto-complete-mode t)
