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

;; ecb
;;(setq stack-trace-on-error t)
(require 'ecb)
(defun my-ecb-toggle-active ()
  (interactive)
  (if ecb-minor-mode
      (ecb-deactivate)
    (ecb-activate)))
(global-set-key (kbd "C-x C-9") 'my-ecb-toggle-active)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
  '(ecb-auto-compatibility-check nil)
 '(ecb-layout-window-sizes (quote (("left8" (ecb-directories-buffer-name 0.17222222222222222 . 0.2857142857142857) (ecb-sources-buffer-name 0.17222222222222222 . 0.22448979591836735) (ecb-methods-buffer-name 0.17222222222222222 . 0.2857142857142857) (ecb-history-buffer-name 0.17222222222222222 . 0.1836734693877551)))))
 '(ecb-options-version "2.40")
 '(ecb-split-edit-window-after-start nil)
 '(ecb-tip-of-the-day nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
