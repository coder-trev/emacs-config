;;; user-init-org --- Configure org mode


;;; Commentary:
;;


;;; Code:


;; setup remember.el
(setq org-directory "~/org")
(setq org-default-notes-file (concat org-directory "/notes.org"))

;; fontify code in code blocks
(setq org-src-fontify-natively t)

(define-key global-map (kbd "C-cc") #'org-capture)

(message "config org-mode")
(provide 'user-init-org)

;;; user-init-org.el ends here
