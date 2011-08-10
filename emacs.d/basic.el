;; basic setup for emacs

;; default frame setup
(setq default-frame-alist
      (nconc default-frame-alist
	     '((top . 22)
	       (left . 250)
	       (height . 53)
	       (width . 120))))

;; font setting
(set-face-attribute 'default nil :font "Menlo 12")
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "WenQuanYi Micro Hei Mono" :size 14)))

(setq-default tab-width 2)
(setq c-basic-offset 2
      c-default-style "k&r")
(setq-default indent-tabs-mode nil)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq inhibit-startup-screen t)
;;(setq initial-buffer-choice "~/Documents/org/TODOs.org")

(tool-bar-mode -1)

(add-to-list 'load-path (expand-file-name "site-lisp" my-emacs-path))
(require 'linum+)
(require 'linum-off)
(setq linum-format ["%%%dd| "])
(setq linum-delay t)
(global-linum-mode t)

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

(fset 'yes-or-no-p 'y-or-n-p)

(autoload 'ibuffer "ibuffer" "List Buffers." t)

(column-number-mode t)

