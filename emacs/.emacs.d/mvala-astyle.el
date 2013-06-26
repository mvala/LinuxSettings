(defvar eide-proj-dir (file-name-directory default-directory))
(defun astyle-this-buffer ()
  (interactive)
  (save-buffer)
  (mark-whole-buffer)
  ;; (if (file-exists-p (concat eide-proj-dir "etc/astyle.cf"))
  ;;     (progn
  ;; 	(shell-command-on-region (point-min) (point-max)
  ;; 				 (concat "astyle --options="(concat eide-proj-dir "etc/astyle.cf")) ;; add options here...
  ;; 				 (current-buffer) t 
  ;; 				 (get-buffer-create "*Astyle Errors*") t)
  ;; 	(shell-command-on-region (point-min) (point-max)
  ;; 				 (concat "astyle ") ;; add options here...
  ;; 				 (current-buffer) t 
  ;; 				 (get-buffer-create "*Astyle Errors*") t))
	
  ;; 	)

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
