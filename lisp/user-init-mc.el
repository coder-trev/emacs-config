;;; user-init-mc.el -- Configuration for multiple cursors

;;

;;; Commentary:

;;

;;; Code:

(defun init-mc-mode ()
  (multiple-cursors-mode)
  (define-key mc/keymap (kbd "<return>") nil))

(add-hook 'after-init-hook #'init-mc-mode)

(message "config multiple cursors")
(provide 'user-init-mc)

;;; user-init-mc.el ends here
