;;; user-init-elisp.el --- Setup emacs-lisp-mode


;;; Commentary:
;;


;;; Code:

;; (dolist (hook '(emacs-lisp-mode-hook lisp-interaction-mode-hook ielm-mode-hook))
;;   (add-hook hook #'rainbow-delimiters-mode))

;; (dolist (hook '(emacs-lisp-mode-hook lisp-interaction-mode-hook ielm-mode-hook))
;;   (add-hook hook #'turn-on-eldoc-mode))

;; ;; make M-. go to source
;; (dolist (hook '(emacs-lisp-mode-hook lisp-interaction-mode-hook ielm-mode-hook))
;;   (add-hook hook #'turn-on-elisp-slime-nav-mode))

(dolist (hook '(emacs-lisp-mode-hook lisp-interaction-mode-hook ielm-mode-hook))
  (dolist (mode '(rainbow-delimiters-mode turn-on-eldoc-mode turn-on-elisp-slime-nav-mode))
    (add-hook hook mode)))

(defun check-parens-after-save ()
  (when (equal major-mode 'emacs-lisp-mode)
    (check-parens)))

(add-hook 'after-save-hook #'check-parens-after-save)

(message "config emacs lisp mode")
(provide 'user-init-elisp)

;;; user-init-elisp.el ends here
