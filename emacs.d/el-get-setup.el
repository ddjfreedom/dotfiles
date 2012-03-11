;; el-get setup
(add-to-list 'load-path "~/.emacs.d/el-get/el-get/")
(require 'el-get)
(setq el-get-sources
      '((:name color-theme-solarized
               :type git
               :url "https://github.com/sellout/emacs-color-theme-solarized.git"
               :after (progn
                        (add-to-list 'custom-theme-load-path
                                     (expand-file-name "color-theme-solarized" el-get-dir))
                        (load-theme 'solarized-light t)))
        (:name clojure-mode)
        (:name paredit
               :after (progn
                        (add-hook 'emacs-lisp-mode-hook (lambda () (paredit-mode +1)))
                        (add-hook 'lisp-mode-hook (lambda () (paredit-mode +1)))
                        (add-hook 'clojure-mode-hook (lambda () (paredit-mode +1)))))
        (:name magit
               :after (progn (global-set-key (kbd "C-x C-a") 'magit-status)))
        (:name yasnippet
               :after (progn
                        (setq yas/trigger-key "")
                        (yas/initialize)
                        (yas/load-directory (expand-file-name "yasnippet/snippets" el-get-dir))))
        (:name cedet
               :features (cedet)
               :after (progn
                        (semantic-load-enable-excessive-code-helpers)
                        (eval-after-load "gtags"
                          '(progn
                             (require 'semanticdb-global)
                             (semanticdb-enable-gnu-global-databases 'c-mode)
                             (semanticdb-enable-gnu-global-databases 'c++-mode)))
                        (require 'semantic-gcc)
                        (global-semantic-idle-completions-mode -1)
                        (global-semantic-stickyfunc-mode -1)
                        (global-semantic-highlight-func-mode -1)
                        (kill-buffer "*Compile-Log*")))
        (:name slime
               :features slime
               :compile ()
               :after (progn
                        (load-file (expand-file-name "slime.el" my-emacs-path))))
        (:name auto-complete
               :features (auto-complete-config))
        (:name emacs-w3m
               :after (progn (if window-system (require 'w3m-load))))
        (:name org-mode
               :features (org)
               :after (progn
                        (eval-after-load "org"
                          (load-file (expand-file-name "org-mode.el" my-emacs-path)))))
        (:name undo-tree
               :features undo-tree
               :after (progn
                        (global-undo-tree-mode)
                        (global-set-key (kbd "s-Z") 'undo-tree-redo)))
        (:name smex
               :features smex
               :after (progn
                        (smex-initialize)
                        (ddj/set-key-bindings 'global-set-key
                                             )))
        (:name lacarte
               :type http
               :url "http://www.emacswiki.org/emacs/download/lacarte.el"
               :features lacarte
               :after (progn
                        (ddj/set-key-bindings 'global-set-key
                                              `(,(kbd "<escape> M-x") lacarte-execute-command)
                                              `(,(kbd "M-`") lacarte-execute-menu-command)
                                              `(,(kbd "<f10>") lacarte-execute-menu-command))))
        (:name auctex
               :build `("./autogen.sh"
                        ,(concat "./configure --with-lispdir=`pwd` --with-emacs="
                                 el-get-emacs
                                 " --with-texmf-dir=/usr/local/texlive/texmf-local")
                        "make"))
        (:name ac-math
               :features ac-math)
        (:name predictive
               :build `(,(concat "make EMACS=" el-get-emacs)
                        "gzip -df predictive-user-manual.info.gz")
               :info "./predictive-user-manual.info"
               :load-path ("." "./latex/"))
        (:name info+
               :type http
               :url "http://www.emacswiki.org/emacs/download/info+.el"
               :after (progn (eval-after-load "info" '(require 'info+))))
        (:name sunrise-commander
               :type git
               :url "https://github.com/escherdragon/sunrise-commander.git"
               :compile ()
               :features (sunrise-commander
                          sunrise-x-buttons
                          sunrise-x-modeline
                          sunrise-x-tree
                          sunrise-x-loop)
               :after (progn
                        (setq sr-terminal-program "bash")
                        (setq sr-listing-switches "-alh")))
        (:name ack-and-a-half
               :type git
               :url "https://github.com/jhelwig/ack-and-a-half.git"
               :after (progn
                        (autoload 'ack-and-a-half-same "ack-and-a-half" nil t)
                        (autoload 'ack-and-a-half "ack-and-a-half" nil t)
                        (autoload 'ack-and-a-half-find-file-samee "ack-and-a-half" nil t)
                        (autoload 'ack-and-a-half-find-file "ack-and-a-half" nil t)
                        ;; Create shorter aliases
                        (defalias 'ack 'ack-and-a-half)
                        (defalias 'ack-same 'ack-and-a-half-same)
                        (defalias 'ack-find-file 'ack-and-a-half-find-file)
                        (defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)))
        (:name unbound
               :features unbound)
        (:name sicp
               :info "sicp.info")))
(el-get 'sync)
