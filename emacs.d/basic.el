;; basic setup for emacs

;; default frame setup
(setq default-frame-alist
      (nconc default-frame-alist
	     '((top . 22)
	       (left . 0)
	       (height . 49)
	       (width . 180))))

(setq-default tab-width 2)
(setq c-basic-offset 2
      c-default-style "k&r")
(setq-default indent-tabs-mode nil)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq inhibit-startup-screen t)
(setq initial-buffer-choice "~/Documents/org/TODOs.org")

(tool-bar-mode -1)

(global-linum-mode t)
(setq linum-format "%d ")

(fringe-mode '(0 . 0))

(show-paren-mode t)

(load-file (expand-file-name "color-theme-vivid-chalk.el" my-emacs-path))
(color-theme-vivid-chalk)

(setq-default major-mode 'org-mode)

(setq ring-bell-function
      (lambda ()
        (unless (memq this-command
                      '(isearch-abort abort-recursive-edit exit-minibuffer keyboard-quit))
          (ding))))
