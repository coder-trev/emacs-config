;;; user-init-web-mode.el --- Configuration for web-mode


;;; Commentary:
;;


;;; Code:


(defun init-web-mode ()
  (add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

  (setq web-mode-enable-block-face t)
  (setq web-mode-enable-part-face t)
  (setq web-mode-enable-auto-pairing t)
  (setq web-mode-enable-current-element-highlight t)
  (setq web-mode-enable-current-column-highlight t)
  (setq web-mode-enable-comment-keywords t)

  (setq web-mode-enable-auto-closing t)
  (setq web-mode-enable-auto-quoting t)

  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq css-indent-offset 2))

(add-hook 'after-init-hook #'init-web-mode)

(message "config web-mode")
(provide 'user-init-web-mode)

;;; user-init-web-mode.el ends here
