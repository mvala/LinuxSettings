(defvar eide-proj-dir (file-name-directory default-directory))
(defun astyle-this-buffer ()
  (interactive)
  (save-buffer)
  (mark-whole-buffer)
  (setq astyle_opt "astyle ")
  (if (file-exists-p (concat eide-proj-dir "etc/astyle.cf"))
      (progn
	(setq astyle_opt (concat "astyle --options=" (concat eide-proj-dir "etc/astyle.cf")))
      ))
  (shell-command-on-region (point-min) (point-max)
			   astyle_opt ;; add options here...
			   (current-buffer) t 
			   (get-buffer-create "*Astyle Errors*") t)
  
  (save-buffer)
  )
