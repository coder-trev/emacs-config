;;; user-init-yasnippet.el --- Configuration for yasnippet


;;; Commentary:
;;


;;; Code:


(defun init-yasnippet ()
  (yas-global-mode 1))

(add-hook 'after-init-hook #'init-yasnippet)

(message "config yasnippet")
(provide 'user-init-yasnippet)

;;; user-init-yasnippet.el ends here
