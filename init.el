;;; init.el --- Main emacs initialization file

;;

;;; Commentary:

;;

;;; Code:

(when (< emacs-major-version 24)
  (error "Only works with Emacs versions 24 and newer"))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'user-init)

(provide 'init)

;;; init.el ends here
