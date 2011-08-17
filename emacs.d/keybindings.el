(ddj/set-key-bindings 'global-set-key
                      `(,(kbd "C-x C-b") ibuffer)
                      `(,(kbd "s-f") ido-find-file)
                      `(,(kbd "s-b") ido-switch-buffer)
                      `(,(kbd "s-n") ido-jump-to-window))
;; use cmd-<arrow key> to move between windows
(windmove-default-keybindings 'super)

