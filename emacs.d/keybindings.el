(ddj/set-key-bindings 'global-set-key
                      `(,(kbd "C-x C-b") ibuffer)
                      `(,(kbd "s-f") ido-find-file)
                      `(,(kbd "s-b") ido-switch-buffer)
                      `(,(kbd "s-n") ido-jump-to-window)
                      ;; slime
                      `("\C-x\C-s" (lambda ()
                                     (interactive)
                                     (slime-connect "127.0.0.1" 4005)))
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

