(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-auto-merge-delay-time 99999)
(defvar ido-enable-replace-completing-read t
  "If t, use ido-completing-read instead of completing-read if possible.

    Set it to nil using let in around-advice for functions where the
    original completing-read is required.  For example, if a function
    foo absolutely must use the original completing-read, define some
    advice like this:

    (defadvice foo (around original-completing-read-only activate)
      (let (ido-enable-replace-completing-read) ad-do-it))")

;; Replace completing-read wherever possible, unless directed otherwise
(defadvice completing-read
  (around use-ido-when-possible activate)
  (if (or (not ido-enable-replace-completing-read) ; Manual override disable ido
          (and (boundp 'ido-cur-list)
               ido-cur-list)) ; Avoid infinite loop from ido calling this
      ad-do-it
    (let ((allcomp (all-completions "" collection predicate)))
      (if allcomp
          (setq ad-return-value
                (ido-completing-read prompt
                                     allcomp
                                     nil require-match initial-input hist def))
        ad-do-it))))
(add-hook 'dired-mode-hook
          '(lambda () (setq ido-enable-replace-completing-read nil)))
(add-hook 'c-mode-common-hook
          '(lambda () (setq ido-enable-replace-completing-read nil)))
;; This command is AMAZING. I recommend mapping it to `C-x v' or `C-x w'
;; depending on which is easier on your keyboard.
(defun ido-jump-to-window ()
  (interactive)
  (let* (;; Swaps the current buffer name with the next one along.
         (visible-buffers ((lambda (l)
                             (if (cdr l)
                                 (cons (cadr l) (cons (car l) (cddr l)))
                               l))
                           (mapcar '(lambda (window) (buffer-name (window-buffer window))) (window-list))))
         (buffer-name (ido-completing-read "Window: " visible-buffers))
         window-of-buffer)
    (if (not (member buffer-name visible-buffers))
        (error "'%s' does not have a visible window" buffer-name)
      (setq window-of-buffer
                (delq nil (mapcar '(lambda (window)
                                       (if (equal buffer-name (buffer-name (window-buffer window)))
                                           window
                                         nil))
                                  (window-list))))
      (select-window (car window-of-buffer)))))
(ido-everywhere t)
(ido-mode t)
