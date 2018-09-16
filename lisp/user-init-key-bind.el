;;; user-init-key-bind.el --- Global key-bindings


;;; Commentary:
;; The functions bound are either global or defined in
;; user-init-custom.el


;;; Code:

(global-set-key (kbd "C-s") #'isearch-forward-regexp)
(global-set-key (kbd "C-r") #'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") #'isearch-forward)
(global-set-key (kbd "C-M-r") #'isearch-backward)

(global-set-key (kbd "C-;") #'toggle-comment-on-line)

(global-set-key (kbd "C-x g") #'magit-status)

(global-set-key (kbd "C-c D") #'delete-file-and-buffer)
(global-set-key (kbd "C-c R") #'rename-file-and-buffer)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "C-x C-r") 'recentf-open-files)

(global-set-key (kbd "C-x C-n") #'other-window)
(global-set-key (kbd "C-x C-p") #'other-window-backward)

(global-set-key (kbd "C-q") #'scroll-n-lines-ahead)
(global-set-key (kbd "C-z") #'scroll-n-lines-behind)

(message "config key-bind")
(provide 'user-init-key-bind)

;;; user-init-key-bind.el ends here
