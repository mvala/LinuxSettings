
;; No tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Save all tempfiles in $TMPDIR/emacs$UID/
(defconst emacs-tmp-dir (format "%s/%s%s/" temporary-file-directory "emacs" (user-uid)))
(setq backup-directory-alist
      `((".*" . ,emacs-tmp-dir)))
(setq auto-save-file-name-transforms
      `((".*" ,emacs-tmp-dir t)))
(setq auto-save-list-file-prefix
      emacs-tmp-dir)

;; nxml-mode
(setq
 nxml-child-indent 4
 nxml-attribute-indent 4
 nxml-slash-auto-complete-flag t)

(require 'color-theme)
(color-theme-initialize)
(color-theme-high-contrast)
