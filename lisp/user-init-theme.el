;;; user-init-theme.el --- Configure color theme

;;

;;; Commentary:

;;

;;; Code:

(defun init-theme (theme hash)
  "Initialize a theme"
  (custom-set-variables '(custom-safe-themes `(,hash default)))
  (custom-set-faces)
  (load-theme theme t))

(defun init-theme-cyberpunk ()
  (init-theme 'cyberpunk "addfaf4c6f76ef957189d86b1515e9cf9fcd603ab6da795b82b79830eed0b284"))

(defun init-theme-zenburn ()
  (init-theme 'zenburn "bfdcbf0d33f3376a956707e746d10f3ef2d8d9caa1c214361c9c08f00a1c8409"))

(defun init-theme-monokai ()
  (init-theme 'monokai "5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b"))

; In order to change theme, change initialization function here
(add-hook 'after-init-hook #'init-theme-monokai)

(message "config theme")
(provide 'user-init-theme)

;;; user-init-theme.el ends here
