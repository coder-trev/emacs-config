;;; user-init-custom.el --- Add custom commands to emacs


;;; Commentary:
;; custom functionality


;;; Code:

(defun toggle-comment-on-line ()
  "Comment or uncomment the current line"
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))

(defun delete-file-and-buffer ()
  "Kill the current buffer and deletes the file it is visiting"
  (interactive)
  (let ((filename (buffer-file-name)))
    (when filename
      (if (vc-backend filename)
	  (vc-delete-file filename)
	(progn
	  (delete-file filename)
	  (message "Deleted file %s" filename)
	  (kill-buffer))))))

;; source: http://steve.yegge.googlepages.com/my-dot-emacs-file
(defun rename-file-and-buffer (new-name)
  "Rename the current buffer and the file it is visiting"
  (interactive "sNew name: ")
  (let ((name (buffer-name))
	(filename (buffer-file-name)))
    (if (not filename)
	(message "Buffer '%s' is not visiting a file!" name)
      (if (get-buffer new-name)
	  (message "A buffer named '%s' already exists!" new-name)
	(progn
	  (rename-file filename new-name 1)
	  (rename-buffer new-name)
	  (set-visited-file-name new-name)
	  (set-buffer-modified-p nil))))))

(defun other-window-backward (&optional n)
  "Select the previous window (1 by default)"
  (interactive "P")
  (other-window (- (prefix-numeric-value n))))

(defun scroll-n-lines-ahead (&optional n)
  "Scroll ahead N lines ahead (1 by default)"
  (interactive "P")
  (scroll-ahead (prefix-numeric-value n)))

(defun scroll-n-lines-behind (&optional n)
  "Scroll ahead N lines behind (1 by default)"
  (interactive "P")
  (scroll-behind (prefix-numeric-value n)))

(message "config custom values")
(provide 'user-init-custom)

;; user-init-custom.el ends here
