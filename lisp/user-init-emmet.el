;;; user-init-emmet.el --- Configuration of emmet


;;; Commentary
;;


;;; Code

(defun init-emmet-mode ()
  (emmet-mode)

  (setq emmet-move-cursor-between-quotes t)
  (setq emmet-self-closing-tag-style "")

  (local-set-key (kbd "C-M-n") #'emmet-next-edit-point)
  (local-set-key (kbd "C-M-p") #'emmet-prev-edit-point))

(add-hook 'web-mode-hook #'init-emmet-mode)
(add-hook 'css-mode-hook #'init-emmet-mode)


(message "config emmet")
(provide 'user-init-emmet)

;;; user-init-emmet.el ends here
