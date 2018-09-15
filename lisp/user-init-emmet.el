;;; user-init-emmet.el --- Configuration of emmet


;;; Commentary
;;


;;; Code


(defun init-emmet-mode ()
  (emmet-mode)
  (setq emmet-move-cursor-between-quotes t)
  (setq emmet-self-closing-tag-style ""))

(add-hook 'web-mode-hook #'emmet-mode)

(message "config emmet")
(provide 'user-init-emmet)

;;; user-init-emmet.el ends here
