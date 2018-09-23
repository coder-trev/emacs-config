;;; user-init-company.el --- Configuration for company mode


;;; Commentary:
;;


;;; Code:

(defun init-company-mode ()
  (global-company-mode)
  (ac-php-core-eldoc-setup)
  (add-to-list 'company-backends #'company-ac-php-backend))

(add-hook 'after-init-hook #'init-company-mode)

(message "config company")
(provide 'user-init-company)

;;; user-init-company.el ends here
