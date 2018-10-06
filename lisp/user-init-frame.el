;;; user-init-frame.el --- Configuration of initial frame

;;

;;; Commentary:

;;

;;; Code:

;; emacs initial size
(setq initial-frame-alist '((top . 0) (left . 0) (width . 157) (height . 44)))

;; increase font size for readability
(set-face-attribute 'default nil :height 120)

;; full path in title bar
(setq-default frame-title-format "%b (%f)")

(message "config frame")
(provide 'user-init-frame)

;;; user-init-frame.el ends here
