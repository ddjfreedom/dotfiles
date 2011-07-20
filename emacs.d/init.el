(setq my-emacs-path "~/.emacs.d/")
(defun my-load-file (file-name &optional path)
  (load-file (expand-file-name file-name
			       (if (null path)
				   my-emacs-path
				 path))))

;; gtags setup
(add-to-list 'load-path "/usr/local/Cellar/global/5.9.4/share/gtags/")
(autoload 'gtags-mode "gtags" "" t)
(add-hook 'c-mode-hook '(lambda () (gtags-mode 1)))
(define-key global-map (kbd "C-.") 'gtags-find-rtag)

(my-load-file "el-get-setup.el")
(my-load-file "basic.el")
(my-load-file "setup-icicles.el")
(my-load-file "keybindings.el")
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
