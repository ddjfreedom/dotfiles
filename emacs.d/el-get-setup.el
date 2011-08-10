;; el-get setup
(add-to-list 'load-path "~/.emacs.d/el-get/el-get/")
(require 'el-get)
(setq el-get-sources
      '(;; (:name color-theme-almost-monokai
        ;;        :features (color-theme-almost-monokai)
        ;;        :after (lambda () (color-theme-almost-monokai)))
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
               :features (auto-complete-config)
               :after (lambda ()
                        (add-to-list 'ac-dictionary-directories
                                     (expand-file-name "el-get/auto-complete/dict" my-emacs-path))
                        (setq ac-use-menu-map t)
                        (define-key ac-menu-map "\C-n" 'ac-next)
                        (define-key ac-menu-map "\C-p" 'ac-previous)
                        (setq ac-auto-start nil)
                        (setq ac-quick-help-delay 0.5)
                        (ac-set-trigger-key "TAB")
                        (ac-config-default)))
        (:name emacs-w3m
               :after (lambda () (if window-system (require 'w3m-load))))
        (:name org-mode
               :features (org)
               :after (lambda ()
                        (load-file (expand-file-name "org-mode.el" my-emacs-path))))
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
                        (global-set-key (kbd "M-x") 'smex)
                        (global-set-key (kbd "M-X") 'smex-major-mode-commands)
                        (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)))))
(el-get)







