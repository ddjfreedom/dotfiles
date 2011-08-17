;; el-get setup
(add-to-list 'load-path "~/.emacs.d/el-get/el-get/")
(require 'el-get)
(setq el-get-sources
      '((:name color-theme-zenburn
               :type git
               :url "https://github.com/bbatsov/zenburn-emacs.git"
               :features color-theme-zenburn
               :after (lambda () (color-theme-zenburn)))
        (:name clojure-mode)
        (:name paredit
               :after (lambda ()
                        (add-hook 'emacs-lisp-mode-hook (lambda () (paredit-mode +1)))
                        (add-hook 'lisp-mode-hook (lambda () (paredit-mode +1)))
                        (add-hook 'clojure-mode-hook (lambda () (paredit-mode +1)))))
        (:name magit
               :after (lambda () (global-set-key (kbd "C-x C-a") 'magit-status)))
        (:name yasnippet
               :features (yasnippet)
               :after (lambda ()
                        (setq yas/trigger-key "")
                        (yas/initialize)
                        (yas/load-directory (expand-file-name "yasnippet/snippets" el-get-dir))))
        (:name cedet
               :features (cedet)
               :after (lambda ()
                        (semantic-load-enable-excessive-code-helpers)
                        (require 'semanticdb-global)
                        (semanticdb-enable-gnu-global-databases 'c-mode)
                        (semanticdb-enable-gnu-global-databases 'c++-mode)
                        (require 'semantic-ia)
                        (require 'semantic-gcc)
                        (add-hook 'texinfo-mode-hook (lambda () (require 'sb-texinfo)))
                        (global-semantic-idle-completions-mode -1)))
        (:name slime
               :features slime
               :compile ()
               :after (lambda ()
                        (load-file (expand-file-name "slime.el" my-emacs-path))
                        (global-set-key (kbd "C-x C-8")
                                        (lambda ()
                                          (interactive)
                                          (slime-connect "127.0.0.1" 4005)))))
        (:name auto-complete
               :features (auto-complete-config))
        (:name emacs-w3m
               :after (lambda () (if window-system (require 'w3m-load))))
        (:name org-mode
               :features (org)
               :after (lambda ()
                        (eval-after-load "org"
			  (load-file (expand-file-name "org-mode.el" my-emacs-path)))))
        (:name anything
               :features (anything-startup))
        (:name undo-tree
               :features undo-tree
               :after (lambda ()
                        (global-undo-tree-mode)
                        (global-set-key (kbd "s-Z") 'undo-tree-redo)))
        (:name smex
               :features smex
               :after (lambda ()
                        (smex-initialize)
                        (ddj/set-key-bindings 'global-set-key
                                              `(,(kbd "M-x") smex)
                                              `(,(kbd "M-X") smex-major-mode-commands))))
        (:name lacarte
               :type http
               :url "http://www.emacswiki.org/emacs/download/lacarte.el"
               :features lacarte
               :after (lambda ()
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
               :description "An add-on which defines three ac-sources for the auto-complete package"
               :type http
               :url "https://ac-math.googlecode.com/svn/trunk/ac-math.el"
               :features ac-math)))
(el-get 'sync)







