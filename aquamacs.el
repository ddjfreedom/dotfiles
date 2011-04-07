;; This is the Aquamacs Preferences file.
;; Add Emacs-Lisp code here that should be executed whenever
;; you start Aquamacs Emacs. If errors occur, Aquamacs will stop
;; evaluating this file and print errors in the *Messags* buffer.
;; Use this file in place of ~/.emacs (which is loaded as well.)
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/color-themes/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/swank-clojure-extra/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/yasnippet-0.6.1c/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/cedet-1.0/common/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/ecb/")
(add-to-list 'load-path "~/.emacs.d/nav/")

;; no toolbar
(tool-bar-mode -1)

(setq aquamacs-scratch-file nil ; do not save scratch file across sessions
			initial-major-mode 'emacs-lisp-mode) ; *scratch* in emacs-lisp-mode

(setq-default tab-width 2)
(setq c-basic-offset 2
      c-default-style "k&r")
(setq-default indent-tabs-mode nil)

;; setup packages
(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; color-theme
(load-file "~/.emacs.d/color-themes/color-theme-vivid-chalk.el")
;;(color-theme-arjen)
(color-theme-vivid-chalk)

;; emacs-nav
(require 'nav)
(add-hook 'nav-mode-hook
          (lambda ()
            (set-window-dedicated-p (get-buffer-window "*nav*") t)))

;; ido-mode
(require 'ido)
(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t)

;; global-linum mode
(global-linum-mode t)

;;gnu global
(add-to-list 'load-path "/usr/local/Cellar/global/5.8.1/share/gtags/")
(autoload 'gtags-mode "gtags" "" t)
(add-hook 'c-mode-hook '(lambda () (gtags-mode 1)))
(define-key global-map (kbd "C-.") 'gtags-find-rtag)
;;;cedet
(require 'cedet)
(global-ede-mode t)
(semantic-load-enable-excessive-code-helpers)
(require 'semanticdb-global)
(semanticdb-enable-gnu-global-databases 'c-mode)
(semanticdb-enable-gnu-global-databases 'c++-mode)
(require 'semantic-ia)
(require 'semantic-gcc)
(add-hook 'texinfo-mode-hook (lambda () (require 'sb-texinfo)))

;; yasnippets
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/site-lisp/yasnippet-0.6.1c/snippets")

;; auto-complete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/Library/Application Support/Aquamacs Emacs/elpa/auto-complete-1.4.20110207/dict")
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)
(require 'auto-complete-clang)
(require 'ac-slime)
(setq ac-auto-start nil)
(setq ac-quick-help-delay 0.5)
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

;; slime
(setq inferior-lisp-program "/usr/local/bin/sbcl")
;;(setq slime-use-autodoc-mode nil)
;;(slime-setup '(slime-fancy))
;;(setq slime-complete-symbol-function 'slime-simple-complete-symbol)
(slime-setup '(slime-repl
               slime-fuzzy
               slime-editing-commands
               slime-references
               slime-package-fu
               slime-fancy-inspector
               slime-presentations
               slime-scratch))
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook
          (lambda ()
            (slime-define-keys slime-repl-mode-map ("\t" 'auto-complete))
            (set-up-slime-ac)))

;; swank-clojure-extra
(require 'swank-clojure-extra)
(eval-after-load "slime"
  '(progn
     (require 'swank-clojure-extra)
     (add-to-list 'slime-lisp-implementations `(clojure ,(swank-clojure-cmd)
							:init swank-clojure-init)
		  t)
     (add-hook 'slime-indentation-update-hooks 'swank-clojure-update-indentation)
     (add-hook 'slime-repl-mode-hook 'swank-clojure-slime-repl-modify-syntax t)
     (add-hook 'clojure-mode-hook 'swank-clojure-slime-mode-hook t)))

;; ibuffer-mode
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

(defun toggle-current-window-dedication ()
  (interactive)
  (let* ((window    (selected-window))
         (dedicated (window-dedicated-p window)))
    (set-window-dedicated-p window (not dedicated))
    (message "Window %sdedicated to %s"
             (if dedicated "no longer " "")
             (buffer-name))))

;; paredit
(add-hook 'emacs-lisp-mode-hook (lambda () (paredit-mode +1)))
(add-hook 'lisp-mode-hook (lambda () (paredit-mode +1)))
(add-hook 'clojure-mode-hook (lambda () (paredit-mode +1)))

;; ecb
(require 'ecb)
