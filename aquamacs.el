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
(add-to-list 'load-path "~/.emacs.d/site-lisp/icicles/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/bookmark+/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/vimpulse/")
(add-to-list 'load-path "~/.emacs.d/nav/")

;; no toolbar
(tool-bar-mode -1)

(setq aquamacs-scratch-file nil ; do not save scratch file across sessions
			initial-major-mode 'emacs-lisp-mode) ; *scratch* in emacs-lisp-mode

(setq-default tab-width 2)
(setq c-basic-offset 2
      c-default-style "k&r")
(setq-default indent-tabs-mode nil)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

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
;; (require 'ido)
;; (ido-mode t)
;; (ido-everywhere t)
;; (setq ido-enable-flex-matching t)

;; global-linum mode
(global-linum-mode t)

;;gnu global
(add-to-list 'load-path "/usr/local/Cellar/global/5.8.1/share/gtags/")
(autoload 'gtags-mode "gtags" "" t)
(add-hook 'c-mode-hook '(lambda () (gtags-mode 1)))
(define-key global-map (kbd "C-.") 'gtags-find-rtag)
;;;cedet
(require 'cedet)
;; (global-ede-mode t)
(semantic-load-enable-excessive-code-helpers)
(require 'semanticdb-global)
(semanticdb-enable-gnu-global-databases 'c-mode)
(semanticdb-enable-gnu-global-databases 'c++-mode)
(require 'semantic-ia)
(require 'semantic-gcc)
(add-hook 'texinfo-mode-hook (lambda () (require 'sb-texinfo)))
(load-file "~/.emacs.d/ede-projects.el")

;; yasnippets
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/site-lisp/yasnippet-0.6.1c/snippets")

;; auto-complete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
             "~/Library/Application Support/Aquamacs Emacs/elpa/auto-complete-1.4.20110207/dict")
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
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  )
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

;; w3m
(add-to-list 'load-path "/usr/share/emacs/site-lisp/w3m/")
(if window-system
    (require 'w3m-load))


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
(defun slime-java-describe (symbol-name)
  "Get details on Java class/instance at point."
  (interactive (list (slime-read-symbol-name "Java Class/instance: ")))
  (when (not symbol-name)
    (error "No symbol given"))
  (save-excursion
    (set-buffer (slime-output-buffer))
    (unless (eq (current-buffer) (window-buffer))
      (pop-to-buffer (current-buffer) t))
    (goto-char (point-max))
    (insert (concat "(show " symbol-name ")"))
    (when symbol-name
      (slime-repl-return)
      (other-window 1))))

(defun slime-javadoc (symbol-name)
  "Get JavaDoc documentation on Java class at point."
  (interactive (list (slime-read-symbol-name "JavaDoc info for: ")))
  (when (not symbol-name)
    (error "No symbol given"))
  (set-buffer (slime-output-buffer))
  (unless (eq (current-buffer) (window-buffer))
    (pop-to-buffer (current-buffer) t))
  (goto-char (point-max))
  (insert (concat "(javadoc " symbol-name ")"))
  (when symbol-name
    (slime-repl-return)
    (other-window 1)))

(add-hook 'slime-connected-hook
          (lambda ()
            (interactive)
            ;;(slime-redirect-inferior-output)
            (define-key slime-mode-map (kbd "C-c d") 'slime-java-describe)
            (define-key slime-repl-mode-map (kbd "C-c d") 'slime-java-describe)
            ;;(define-key slime-mode-map (kbd "C-c D") 'slime-javadoc)
            ;;(define-key slime-repl-mode-map (kbd "C-c D") 'slime-javadoc)
            ))
(global-set-key (kbd "M-8")
                (lambda ()
                  (interactive)
                  (slime-connect "127.0.0.1" 4005)))
(setq slime-browse-local-javadoc-root "/Users/ddj/Documents/Documentations/Java SE6 Documentation")

(defun slime-browse-local-javadoc (ci-name)
  "Browse local JavaDoc documentation on Java class/Interface at point."
  (interactive (list (slime-read-symbol-name "Class/Interface name: ")))
  (when (not ci-name)
    (error "No name given"))
  (let ((name (replace-regexp-in-string "\\$" "." ci-name))
        (path (concat (expand-file-name slime-browse-local-javadoc-root) "/api/")))
    (with-temp-buffer
      (insert-file-contents (concat path "allclasses-noframe.html"))
      (let ((l (delq nil
                     (mapcar #'(lambda (rgx)
                                 (let* ((r (concat "\\.?\\(" rgx "[^./]+\\)[^.]*\\.?$"))
                                        (n (if (string-match r name)
                                               (match-string 1 name)
                                             name)))
                                   (if (re-search-forward (concat "<A HREF=\"\\(.+\\)\" +.*>" n "<.*/A>") nil t)
                                       (match-string 1)
                                     nil)))
                             '("[^.]+\\." "")))))
        (if l
            (browse-url (concat "file://" path (car l)))
          (error (concat "Not found: " ci-name)))))))

(add-hook 'slime-connected-hook #'(lambda ()
                                    (define-key slime-mode-map		(kbd "C-c b")	'slime-browse-local-javadoc)
                                    (define-key slime-repl-mode-map	(kbd "C-c b")	'slime-browse-local-javadoc)))

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
(setq stack-trace-on-error t)
(require 'ecb)

;; tramp
(setq tramp-default-method "ssh"
      tramp-default-user "ddj"
      tramp-default-host "localhost#2222")

;; icicles
(require 'icicles)
(icy-mode 1)

(setq ftp-program "lftp")
(setq shell-file-name "bash")
(setenv "PATH"
        (concat (expand-file-name "/usr/local/bin")
                path-separator
                (getenv "PATH")))
;; vimpulse
(require 'vimpulse)
(vimpulse-vmap ",c" 'comment-dwim)
(vimpulse-map "i" 'viper-toggle-key-action)
(global-set-key (kbd "<escape>") 'viper-intercept-ESC-key)
(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (when (> (length (frame-list)) 1)
              (delete-frame (cadr (frame-list))))))
;; undo-tree
;;(require 'undo-tree)
(load-file "~/.emacs.d/site-lisp/graphviz-dot-mode.el")

;; org-mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(defun my-org-dict-replace ()
  (interactive)
  (backward-word)
  (search-forward (current-word))
  (replace-match (concat "[[dict://" (current-word) "][" (current-word) "]]")))
(defun my-look-up-word ()
  (interactive)
  (shell-command (concat "open dict://" (current-word))))
(add-hook 'org-mode-hook
          (lambda ()
            (flyspell-mode)
            (yas/minor-mode-on)
            (local-set-key `[(,osxkeys-command-key i)] 'my-org-dict-replace)
            (local-set-key `[(,osxkeys-command-key r)]
                           (lambda ()
                             (interactive)
                             (shell-command (concat "open dict://" (current-word)))))))
(require 'org)
(setq org-startup-indented t)
(org-add-link-type "dict" 'org-dict-open)
(defun org-dict-open (path)
  (shell-command (concat "open dict:" path)))

;; magit
(global-set-key (kbd "C-<f10>") 'magit-status)
