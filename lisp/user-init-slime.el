;;; user-init-slime.el --- Configuration for slime


;;; Commentary:
;;


;;; Code:

(defun common-lisp-interpreter ()
  (setq inferior-lisp-program "sbcl"))

(add-hook 'after-init-hook #'common-lisp-interpreter)

(message "config slime")
(provide 'user-init-slime)

;;; user-init-slime.el ends here
