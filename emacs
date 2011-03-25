(add-to-list 'load-path "~/.emacs.d/")
;;(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/w3m")
(add-to-list 'Info-default-directory-list "/usr/local/share/info/")

(setq default-frame-alist 
      (append default-frame-alist
              '((height . 43)
                (width . 155)
                (top . 22)
                (left . 0))))
(setq-default tab-width 2)
(setq c-basic-offset 2
      c-default-style "k&r")
;;;indent using space
(setq-default indent-tabs-mode nil)

(set-default-font
 "-apple-Menlo-medium-normal-normal-*-14-*-*-*-m-0-iso10646-1")

(setq exec-path (append '("/usr/local/bin") exec-path))

;;;colortheme
(add-to-list 'load-path "~/.emacs.d/colortheme/")
(require 'color-theme)
(color-theme-initialize)
(load-file "~/.emacs.d/colortheme/color-theme-vivid-chalk.el")
(color-theme-vivid-chalk)

;;;key bindings
(define-key global-map (kbd "s-t") 'find-file) ;; cmd-t
(define-key global-map (kbd "s-.") 'set-mark-command)
(define-key global-map (kbd "s-b") 'ido-switch-buffer)
;;; Don't show the startup screen
(setq inhibit-startup-message t)

(tool-bar-mode -1)
;;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

(setq visible-bell t)

(require 'package)
(add-to-list 'package-archives
            '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(require 'ido)
(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t)

(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;;Auto Indentation
(setq auto-indent-key-for-end-of-line-then-newline "<M-return>")
;;(require 'auto-indent-mode)
;;(auto-indent-global-mode)

;;;YASnippet
(add-to-list 'load-path "~/.emacs.d/yasnippet-0.6.1c/")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/yasnippet-0.6.1c/snippets/")

;;;show line number
(require 'linum+)
(global-linum-mode t)
(column-number-mode t)

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

;;gnu global
(add-to-list 'load-path "/usr/local/Cellar/global/5.8.1/share/gtags/")
(autoload 'gtags-mode "gtags" "" t)
(gtags-mode t)
;;(add-hook 'c-mode-hook '(lambda () (gtags-mode 1)))
(define-key global-map (kbd "C-.") 'gtags-find-rtag)
;;;cedet
(load-file "~/.emacs.d/cedet/common/cedet.el")
(global-ede-mode t)
(semantic-load-enable-excessive-code-helpers)
;; (semantic-load-enable-primary-exuberent-ctags-support)
;; (semanticdb-enable-exuberent-ctags 'c-mode)
;; (semanticdb-enable-exuberent-ctags 'c++-mode)
;;(setq semantic-symref-tool 'global)
(require 'semanticdb-global)
(semanticdb-enable-gnu-global-databases 'c-mode)
(semanticdb-enable-gnu-global-databases 'c++-mode)
;;(speedbar t)
(require 'semantic-ia)
(require 'semantic-gcc)
(add-hook 'texinfo-mode-hook (lambda () (require 'sb-texinfo)))
(ede-cpp-root-project "minix"
                      :name "minix"
                      :file "~/Developer/minix src/LICENSE"
                      :include-path '("/include" "/kernel/arch/i386/include" "/drivers/acpi/include")
                      )
;;;jdee
;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/jdee/lisp"))
;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/elib"))
;; (require 'jde)

;;;ecb
;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/ecb"))
;; (require 'ecb)
;;(setq ecb-auto-activate t)
;;(setq ecb-tip-of-the-day nil)
;; (global-set-key (kbd "<M-left>") 'ecb-goto-window-directories)
;; (global-set-key (kbd "<M-right>") 'ecb-goto-window-edit1)
;; (global-set-key (kbd "<M-down>") 'other-window)

;;;auto-complete
;;(add-to-list 'load-path "~/.emacs.d/autocomplete/")
(require 'auto-complete-config)
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

;;(add-to-list 'ac-dictionary-directories "~/.emacs.d/autocomplete//ac-dict")
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
(setq inferior-lisp-program "/usr/local/bin/sbcl") ; your Lisp system
(add-hook 'slime-repl-mode-hook 'clojure-mode-font-lock-setup)
(require 'slime)
(slime-setup '(slime-fancy))

;;;ibuffer
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;;;w3m
;;(require 'w3m-load)
;;(setq browse-url-browser-function 'w3m-browse-url)
;;(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)

;;;haskell-mode
(load "~/.emacs.d/haskell-mode/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

;;;tramp
(require 'tramp)
(setq tramp-initial-end-of-output "# ")
(setq tramp-default-method "ssh")
(setq tramp-verbose 10)

;;;session
(require 'session)
(add-hook 'after-init-hook 'session-initialize)
;;;desktop
;; (load "desktop")
;; (desktop-load-default)
;; (desktop-read)
;; (desktop-save-mode t)

;;;magit
(add-to-list 'load-path "/usr/local/Cellar/magit/0.8.2/share/emacs/site-lisp/")
(require 'magit)

;;;paredit
(add-hook 'slime-repl-mode-hook (lambda () (paredit-mode t)))

