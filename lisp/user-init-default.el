;;; user-init-default.el --- Configuration changes on emacs default values


;;; Commentary:
;; Default values for global environment


;;; Code:

;; go straight to scratch buffer on startup
(setq inhibit-startup-message t)

;; disable toolbar
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode 0))

;; disable menubar
(when (fboundp 'menu-bar-mode)
  (menu-bar-mode 0))

;; disable scrollbar
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; enable linum mode
(when (fboundp 'global-linum-mode)
  (global-linum-mode t))

;; these settings relate to how emacs interacts with your OS
(setq
  ;; makes killing/yanking interact with the clipboard
  x-select-enable-clipboard t

  ;; I'm actually not sure what this does but it's recommended?
  x-select-enable-primary t

  ;; save clipboard strings into kill ring before replacing them.
  ;; When one selects something in another program to paste it into emacs,
  ;; but kills something in emacs before actuall pasting it,
  ;; this selection is gone unless this variable is non-nil
  save-interprogram-paste-before-kill t

  ;; shows all options when running apropos
  apropos-do-all t

  ;; mouse yank commands yank at point instead of at click
  mouse-yank-at-point t)

;; no cursor blinking
(blink-cursor-mode 0)

;; don't pop up font menu
(global-set-key (kbd "s-t") '(lambda () (interactive)))

;; no bell
(setq ring-bell-function 'ignore)

;; emacs >= 26
;; (when (fboundp 'global-display-line-numbers-mode)
;;   (global-display-line-numbers-mode t))

;; enable narrowing
(put 'narrow-to-region 'disabled nil)

;; enable paren matching mode
(show-paren-mode t)

;; enable electric pair mode
(electric-pair-mode t)

;; set default directory
(setq default-directory "~/")

;; the forward naming method includes part of the file's directory name
;; at the beginning of the buffer name.
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; highlight current line
(global-hl-line-mode t)

;; enable highlock mode for all parents
(global-hi-lock-mode t)

;; automatic syntax highlighting
(global-font-lock-mode t)

;; cleanup whitespace before saving file
(add-hook 'before-save-hook #'whitespace-cleanup)

(message "config default")
(provide 'user-init-default)

;;; user-init-default.el ends here
