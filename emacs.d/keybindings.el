(ddj/set-key-bindings 'global-set-key
                      `(,(kbd "C-x C-b") ibuffer)
                      `(,(kbd "s-f") ido-find-file)
                      `(,(kbd "s-b") ido-switch-buffer)
                      `(,(kbd "s-n") ido-jump-to-window)
                      ;; smex
                      `(,(kbd "M-x") smex)
                      `(,(kbd "M-X") smex-major-mode-commands)
                      ;; magit
                      `(,(kbd "s-m") magit-status))
;; use cmd-<arrow key> to move between windows
(windmove-default-keybindings 'super)
(dolist (mode-hook '(lisp-mode-hook emacs-lisp-mode-hook  c-mode-common-hook))
  (add-hook mode-hook
            '(lambda () (local-set-key [return] 'newline-and-indent))))

;; C-z prefix keys
(global-unset-key "\C-z")
(ddj/set-key-bindings 'global-set-key
                      '("\C-zs" copy-to-register)
                      '("\C-zi" insert-register)
                      `(,(kbd "C-z <SPC>") point-to-register)
                      '("\C-zj" jump-to-register)
                      '("\C-zw" window-configuration-to-register)
                      '("\C-zf" frame-configuration-to-register)
                      '("\C-zr" (lambda ()
                                   (interactive)
                                   (slime-connect "127.0.0.1" 4005)))
                      '("\C-zx" sunrise)
                      '("\C-zX" sunrise-cd))
