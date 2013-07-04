(defvar astyle-opt "astyle ")
(if (file-exists-p (concat eide-proj-dir "etc/astyle.cf"))
    (setq astyle-opt (concat "astyle --options=" (concat eide-proj-dir "etc/astyle.cf")))
    )
(defun astyle-this-buffer ()
  (interactive)
  (save-buffer)
  (mark-whole-buffer)
  (shell-command-on-region (point-min) (point-max)
                           astyle-opt
                           (current-buffer) t 
                           (get-buffer-create "*Astyle Errors*") t)
  (save-buffer)
  )
