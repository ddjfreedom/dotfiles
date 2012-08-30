(defun ddj/set-key-bindings (action &rest args)
  (mapcar (lambda (lst)
            (let ((key (car lst))
                  (val (cadr lst)))
              (funcall action key val)))
          args))

(ddj/set-key-bindings 'global-set-key
                      `(,(kbd "C-x C-b") ibuffer)
                      `(,(kbd "s-f") ido-find-file)
                      `(,(kbd "s-b") ido-switch-buffer))

;; use cmd-<arrow key> to move between windows
(windmove-default-keybindings 'super)

(dolist (mode-hook '(lisp-mode-hook emacs-lisp-mode-hook  c-mode-common-hook))
  (add-hook mode-hook
            '(lambda () (local-set-key [return] 'newline-and-indent))))

;; C-z prefix keys
(global-unset-key "\C-z")
(ddj/set-key-bindings 'global-set-key
                      '("\C-zc" copy-to-register)
                      '("\C-zi" insert-register)
                      `(,(kbd "C-z <SPC>") point-to-register)
                      '("\C-zj" jump-to-register)
                      '("\C-zw" window-configuration-to-register)
                      '("\C-zf" frame-configuration-to-register)
                      '("\C-zr" nrepl-jack-in)
                      '("\C-zx" sunrise)
                      '("\C-zX" sunrise-cd))
