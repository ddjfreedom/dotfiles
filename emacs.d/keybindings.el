(defun ddj/set-key-bindings (action &rest args)
  (mapcar (lambda (lst)
            (let ((key (car lst))
                  (val (cadr lst)))
              (funcall action key val)))
          args))
(ddj/set-key-bindings 'global-set-key
                      `(,(kbd "C-9") ido-find-file)
                      `(,(kbd "C-0") ido-switch-buffer)
                      `(,(kbd "C-x C-b") ibuffer))
;;(global-set-key (kbd "C-=") 'set-mark-command)
;;(global-set-key (kbd "C-x C-f") 'anything-find-files)
;;(global-set-key (kbd "C-x b") 'anything-for-files)


