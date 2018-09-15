;;; user-init-session.el --- Configuration for file use in emacs


;;; Commentary:


;;; Code:

;; turn on recent file mod so that you can more easily switch to
;; recently edited files
(setq recentf-save-file (concat user-emacs-directory ".recentf"))
(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 40)

;; when you visit a file, point goes to the last place where it
;; was when you previously visited the same file.
(require 'saveplace)
(setq-default save-place t)

;; keep track of saved places in ~/.emacs.d/places
(setq save-place-file (concat user-emacs-directory "places"))

;; backup files
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory "backups"))))
(setq auto-save-default nil)

;; no need for ~ file when editing
(setq create-lockfiles nil)

(message "config-session")
(provide 'user-init-session)

;;; user-init-session.el ends here
