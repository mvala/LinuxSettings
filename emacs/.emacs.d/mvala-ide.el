(when (display-graphic-p)
(if (file-exists-p ".emacs-ide-project.cfg")
    (progn
      (add-to-list 'load-path "~/.emacs.d/site-lisp/eide/")
      (require 'eide)
      (eide-start))))


