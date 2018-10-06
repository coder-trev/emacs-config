;;; user-init-git-gutter.el --- Git gutter configuration file

;;

;;; Commentary:

;;

;;; Code:

(require 'git-gutter-fringe)

(defun init-git-gutter ()
  (global-git-gutter-mode))

(add-hook 'after-init-hook #'init-git-gutter)

(message "config git gutter")
(provide 'user-init-git-gutter)

;;; user-init-git-gutter.el ends here
