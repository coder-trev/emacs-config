;;; user-init-lisp.el --- Setup emacs-lisp-mode


;;; Commentary:
;;


;;; Code:

(dolist (hook '(emacs-lisp-mode-hook
		lisp-interaction-mode-hook
		ielm-mode-hook
		lisp-mode-hook))
  (dolist (mode '(rainbow-delimiters-mode
		  turn-on-eldoc-mode
		  turn-on-elisp-slime-nav-mode))
    (add-hook hook mode)))

(defun check-parens-after-save ()
  (when (equal major-mode 'emacs-lisp-mode)
    (check-parens)))

(add-hook 'after-save-hook #'check-parens-after-save)

(message "config lisp")
(provide 'user-init-lisp)

;;; user-init-lisp.el ends here
