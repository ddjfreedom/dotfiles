(load-file (expand-file-name "icicles-install.el" my-emacs-path))
(setq icicle-download-dir (expand-file-name "icicles" my-emacs-path))
(add-to-list 'load-path icicle-download-dir)
(setq icicle-files-to-download-list
     (nconc icicle-files-to-download-list
            '("ring+.el"
              "pp+.el"
              "fuzzy-match.el"
              "info+.el"
              )))

;; pp+
;;(require 'pp+)
;;(substitute-key-definition 'eval-last-sexp
;;                           'pp-eval-last-sexp global-map)
;;(substitute-key-definition 'eval-expression
;;                           'pp-eval-expression global-map)
;;
(require 'icicles)
(icy-mode 1)


