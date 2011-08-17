(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(eval-after-load "tex"
  '(progn
     (add-to-list 'TeX-command-list
                  '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil
                   t
                   :help "Run XeLaTeX"))
     (setq-default TeX-master nil)
     (setq TeX-auto-save           t
           TeX-parse-self          t
           reftex-plug-into-AUCTeX t
           TeX-view-program-list   '(("Preview" "open %o"))
           TeX-global-PDF-mode     t)
     (setcdr (assoc 'output-pdf TeX-view-program-selection)
             '("Preview"))))
(eval-after-load "latex"
  '(progn
     (setq LaTeX-fold-env-spec-list  (append '(("[lstlisting]" ("lstlisting"))
                                               ("[enumerate]"  ("enumerate"))
                                               ("[figure]"     ("figure")))
                                             LaTeX-fold-env-spec-list))))
(ddj/add-hooks 'LaTeX-mode-hook
               '(lambda ()
                  (setq TeX-command-default "XeLaTeX")
                  (outline-minor-mode 1))
               'visual-line-mode
               'LaTeX-math-mode
               'turn-on-reftex
               'TeX-fold-mode)
