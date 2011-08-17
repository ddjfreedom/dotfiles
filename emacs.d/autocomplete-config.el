(add-to-list 'ac-dictionary-directories
             (expand-file-name "el-get/auto-complete/dict" my-emacs-path))
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)
(setq ac-auto-start nil)
(setq ac-quick-help-delay 0.5)
(ac-set-trigger-key "TAB")
(ac-config-default)

(add-to-list 'ac-modes 'latex-mode)
(defun ddj/ac-latex-mode-setup ()
  (setq ac-sources
        (append '(ac-source-math-latex ac-source-latex-commands  ac-source-math-unicode)
                ac-sources)))
(add-hook 'LaTeX-mode-hook 'ddj/ac-latex-mode-setup)
