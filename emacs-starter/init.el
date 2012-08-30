;; set PATH
(if (not (getenv "TERM_PROGRAM"))
    (setenv "PATH"
            (shell-command-to-string "source $HOME/.zshrc && printf $PATH")))

;; set INFOPATH
(add-hook 'Info-mode-hook
          (lambda () (add-to-list 'Info-directory-list "~/.emacs.d/el-get/el-get"))
          'append)

(add-to-list 'load-path (concat user-emacs-directory "el-get/el-get"))
(require 'el-get)

;; local sources
(setq el-get-sources
      '((:name org-mode
               :features (org))
        (:name auctex
               :build `("./autogen.sh"
                        ,(concat "./configure --with-lispdir=`pwd` --with-emacs="
                                 el-get-emacs
                                 " --with-texmf-dir=/usr/local/texlive/texmf-local")
                        "make"))))

(setq my-el-get-packages
      (mapcar 'el-get-source-name el-get-sources))

(el-get nil my-el-get-packages)

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-elpa-packages
  '(starter-kit
    starter-kit-lisp
    starter-kit-bindings
    starter-kit-ruby
    zenburn-theme
    clojure-mode
    unbound
    undo-tree)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-elpa-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("b7553781f4a831d5af6545f7a5967eb002c8daeee688c5cbf33bf27936ec18b3" default)))
 '(org-agenda-files (quote ("~/Documents/org/capture.org" "~/Documents/org/books.org" "~/Documents/org/todo.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'zenburn)
(setq my-package-config-dir (concat user-emacs-directory "package-config"))

(defun ddj/after-init-setup (form)
  (let ((func (list 'lambda nil form)))
    (add-hook 'after-init-hook func)
    (when after-init-time
      (eval form))))
(ddj/after-init-setup
 '(progn
    (mapc 'load (directory-files my-package-config-dir 'full "^[^#].*el$"))))
