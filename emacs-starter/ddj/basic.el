;; default frame setup
(setq default-frame-alist
      (nconc default-frame-alist
             '((top . 22) (left . 0) (height . 53) (width . 180))))

;; font setting
(set-face-attribute 'default nil :font "Menlo 12")
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "WenQuanYi Micro Hei Mono" :size 14)))

(setq-default tab-width 4)
(setq c-basic-offset 4)
(setq c-default-style "k&r")

;; use aspell in flyspell mode
(setq ispell-program-name "/usr/local/bin/aspell")
(setq ispell-list-command "list")
