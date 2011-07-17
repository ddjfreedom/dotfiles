(setq inferior-lisp-program "/usr/local/bin/sbcl")
;;(setq slime-use-autodoc-mode nil)
;;(slime-setup '(slime-fancy))
;;(setq slime-complete-symbol-function 'slime-simple-complete-symbol)
(slime-setup '(slime-repl
               slime-fuzzy
               slime-editing-commands
               slime-references
               slime-package-fu
               slime-fancy-inspector
               slime-presentations
               slime-scratch))
;;(add-hook 'slime-mode-hook 'set-up-slime-ac)
;; (add-hook 'slime-repl-mode-hook
;;           (lambda ()
;;             (slime-define-keys slime-repl-mode-map ("\t" 'auto-complete))
;;             (set-up-slime-ac)))
(defun slime-java-describe (symbol-name)
  "Get details on Java class/instance at point."
  (interactive (list (slime-read-symbol-name "Java Class/instance: ")))
  (when (not symbol-name)
    (error "No symbol given"))
  (save-excursion
    (set-buffer (slime-output-buffer))
    (unless (eq (current-buffer) (window-buffer))
      (pop-to-buffer (current-buffer) t))
    (goto-char (point-max))
    (insert (concat "(show " symbol-name ")"))
    (when symbol-name
      (slime-repl-return)
      (other-window 1))))

(defun slime-javadoc (symbol-name)
  "Get JavaDoc documentation on Java class at point."
  (interactive (list (slime-read-symbol-name "JavaDoc info for: ")))
  (when (not symbol-name)
    (error "No symbol given"))
  (set-buffer (slime-output-buffer))
  (unless (eq (current-buffer) (window-buffer))
    (pop-to-buffer (current-buffer) t))
  (goto-char (point-max))
  (insert (concat "(javadoc " symbol-name ")"))
  (when symbol-name
    (slime-repl-return)
    (other-window 1)))

(add-hook 'slime-connected-hook
          (lambda ()
            (interactive)
            ;;(slime-redirect-inferior-output)
            (define-key slime-mode-map (kbd "C-c d") 'slime-java-describe)
            (define-key slime-repl-mode-map (kbd "C-c d") 'slime-java-describe)
            ;(define-key slime-mode-map (kbd "C-c D") 'slime-javadoc)
            ;(define-key slime-repl-mode-map (kbd "C-c D") 'slime-javadoc)
            ))
;(global-set-key (kbd "M-8")
;                (lambda ()
;                  (interactive)
;                  (slime-connect "127.0.0.1" 4005)))
