;;; user-init-ido.el --- Configuration of ido mode

;;

;;; Commentary:

;;

;;; Code:

(require 'ido)
(ido-mode t)

;; fuzzy matching, e.g. "tl" will match "Tyrion Lannister"
(setq ido-enable-flex-matching t)

;; don't try to match file across "work" directories; only match files
;; in the current directory displayed in the minibuffer
(setq ido-auto-merge-work-directories-length -1)

;; Include buffer names of recently open files, even if they're not
;; open now
(setq ido-use-virtual-buffers t)

(message "config ido")
(provide 'user-init-ido)

;;; user-init-ido.el ends here
