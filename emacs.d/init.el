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

(my-load-file "el-get-setup.el")
(my-load-file "basic.el")
(my-load-file "keybindings.el")
(my-load-file "auctex-config.el")
(my-load-file "autocomplete-config.el")
;; outline-minor-mode
(add-hook 'outline-minor-mode-hook
          (lambda () (local-set-key "\C-z\C-z"
                                    outline-mode-prefix-map)))
;; ecb
(when (> emacs-major-version 23)
  (setq stack-trace-on-error nil))
(autoload 'ecb-minor-mode "ecb" "" t)
;; gtags setup
(add-to-list 'load-path "/usr/local/Cellar/global/5.9.4/share/gtags/")
(autoload 'gtags-mode "gtags" "" t)
(add-hook 'c-mode-common-hook
          '(lambda ()
             (gtags-mode 1)
             (define-key c-mode-base-map (kbd "C-.") 'gtags-find-rtag)
             (define-key c-mode-base-map "\C-ze" 'ecb-minor-mode)))

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(mapc (lambda (arg) (set-register (car arg) (cadr arg)))
      '((?t (file . "~/Documents/org/todo.org"))
        (?n (file . "~/Documents/org/note.org"))
        (?c (file . "~/Documents/org/capture.org"))))
