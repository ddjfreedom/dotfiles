(setq my-emacs-path "~/.emacs.d/")
(defun my-load-file (file-name &optional path)
  (load-file (expand-file-name file-name
			       (if (null path)
				   my-emacs-path
				 path))))
(defun ddj/set-key-bindings (action &rest args)
  (mapcar (lambda (lst)
            (let ((key (car lst))
                  (val (cadr lst)))
              (funcall action key val)))
          args))
(defun ddj/add-hooks (hook &rest args)
  (dolist (fn args)
    (add-hook hook fn)))

(my-load-file "ido-config.el")
;; gtags setup
(add-to-list 'load-path "/usr/local/Cellar/global/5.9.4/share/gtags/")
(autoload 'gtags-mode "gtags" "" t)
(add-hook 'c-mode-common-hook
          '(lambda ()
             (gtags-mode 1)
             (define-key c-mode-base-map (kbd "C-.")
               'gtags-find-rtag)))

(my-load-file "el-get-setup.el")
(my-load-file "basic.el")
(my-load-file "keybindings.el")
(my-load-file "auctex-config.el")
(my-load-file "autocomplete-config.el")
;; outline-minor-mode
(add-hook 'outline-minor-mode-hook
          (lambda () (local-set-key "\C-c\C-z"
                                    outline-mode-prefix-map)))
;; ecb
(when (> emacs-major-version 23)
  (setq stack-trace-on-error nil))
(require 'ecb)
(defun my-ecb-toggle-active ()
  (interactive)
  (if ecb-minor-mode
      (ecb-deactivate)
    (ecb-activate)))
(global-set-key (kbd "C-x C-9") 'my-ecb-toggle-active)
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
