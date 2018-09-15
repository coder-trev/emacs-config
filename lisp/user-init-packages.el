;;; user-init-packages.el --- Configure packages


;;; Commentary:
;;


;;; Code:


(require 'package)

(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/"))
;;(add-to-list 'package-archives
;;	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;get list of packages
(unless package-activated-list (package-refresh-contents))

(let ((mypackages '(
		    company
		    company-php
		    slime
		    elisp-slime-nav
		    multiple-cursors
		    web-mode
		    emmet-mode
		    yasnippet
		    yasnippet-snippets
		    org
		    php-mode
		    rainbow-delimiters
		    git-gutter-fringe
		    whitespace-cleanup-mode
		    highlight-indentation
		    which-key
		    magit

		    ;; Themes
		    zenburn-theme
		    monokai-theme
		    cyberpunk-theme
		    )))
  (when (or (null package-activated-list)
	    (cl-set-difference package-activated-list mypackages))
    (mapc
     (lambda (package) (or (package-installed-p package)
			   (package-install package)))
     mypackages)))

(message "config packages")
(provide 'user-init-packages)

;;; user-init-packages.el ends here
