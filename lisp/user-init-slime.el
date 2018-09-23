;;; user-init-slime.el --- Configuration for slime


;;; Commentary:
;;


;;; Code:

(defun set-common-lisp-interpreter ()
  (setq inferior-lisp-program "sbcl"))

(add-hook 'after-init-hook #'set-common-lisp-interpreter)

(message "config slime")
(provide 'user-init-slime)

;;; user-init-slime.el ends here
