(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/w3m")

(add-to-list 'Info-default-directory-list "/opt/local/share/info")

(add-to-list 'exec-path "/opt/local/bin")
(setq default-frame-alist 
      (append default-frame-alist
              '((height . 40)
                (width . 100)
                (top . 45)
                (left . 250))))
(setq-default tab-width 2)
(setq c-basic-offset 2
      c-default-style "k&r")
;;;indent using space
(setq-default indent-tabs-mode nil)

(set-default-font
 "-apple-Menlo-medium-normal-normal-*-14-*-*-*-m-0-iso10646-1")

(setenv "PATH"
        (concat "/opt/local/bin:/opt/local/sbin:/usr/local/bin:"
                (getenv "PATH")))
;;;colortheme
(add-to-list 'load-path "~/.emacs.d/colortheme/")
(require 'color-theme)
(color-theme-initialize)
(load-file "~/.emacs.d/colortheme/color-theme-vivid-chalk.el")
(color-theme-vivid-chalk)

(require 'ido)
(ido-mode t)

;;;Auto Indentation
(setq auto-indent-key-for-end-of-line-then-newline "<M-return>")
(require 'auto-indent-mode)
(auto-indent-global-mode)
(add-to-list 'auto-indent-disabled-modes-list 'slime-repl-mode)
(add-to-list 'auto-indent-disabled-modes-list 'w3m-mode)
;;;YASnippet
(add-to-list 'load-path "~/.emacs.d/yasnippet-0.6.1c/")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/yasnippet-0.6.1c/snippets/")

;;;show line number
;;(require 'linum+)
(global-linum-mode t)

(defun go-to-char (n char)
  "Move forward to Nth occurence of CHAR.
Typing `go-to-char-key' again will move forwad to the next Nth
occurence of CHAR."
  (interactive "p\ncGo to char: ")
  (search-forward (string char) nil nil n)
  (while (char-equal (read-char)
                     char)
    (search-forward (string char) nil nil n))
  (setq unread-command-events (list last-input-event)))

(define-key global-map (kbd "C-c a") 'go-to-char)

;;;auto-complete
(add-to-list 'load-path "~/.emacs.d/autocomplete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/autocomplete//ac-dict")
(require 'auto-complete-clang)

(require 'ac-slime)
(add-hook 'slime-mode-hook
          (lambda ()
            ;;(auto-complete-mode t)
            (set-up-slime-ac)))
(add-hook 'slime-repl-mode-hook
          (lambda ()
            ;;(auto-complete-mode t)
            (set-up-slime-ac)))
(add-hook 'slime-connected-hook
          (lambda ()
            (define-key slime-mode-map (kbd "TAB") 'auto-complete)
            (define-key slime-repl-mode-map (kbd "TAB") 'auto-complete)))

(setq ac-auto-start nil)
(setq ac-quick-help-delay 0.5)
;;(define-key ac-mode-map [(control tab)] 'auto-complete)
(ac-set-trigger-key "TAB")
(defun my-ac-config ()
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
  ;;(add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
  (add-hook 'css-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup))

(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
(my-ac-config)
;; dirty fix for having AC everywhere
(define-globalized-minor-mode real-global-auto-complete-mode
  auto-complete-mode (lambda ()
                       (if (not (minibufferp (current-buffer)))
                           (auto-complete-mode 1))
                       ))
(real-global-auto-complete-mode t)

;;;slime config
(defvar common-lisp-hyperspec-root "file:///Users/ddj/Documents/Documentations/HyperSpec-7-0/HyperSpec/")
(add-to-list 'load-path "~/.emacs.d/slime/")  ; your SLIME directory
(setq inferior-lisp-program "/opt/local/bin/sbcl") ; your Lisp system
(require 'slime-autoloads)
(slime-setup '(slime-fancy))

;;;ibuffer
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

(require 'highlight-80+)
(require 'highlight-parentheses)

;;;w3m
(require 'w3m-load)
(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)