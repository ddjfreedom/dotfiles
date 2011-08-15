(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(defun my-org-dict-replace ()
  (interactive)
  (backward-word)
  (search-forward (current-word))
  (replace-match (concat "[[dict://" (current-word) "][" (current-word) "]]")))
(defun my-look-up-word ()
  (interactive)
  (shell-command (concat "open dict://" (current-word))))
(add-hook 'org-mode-hook
          (lambda ()
            (yas/minor-mode-on)
            (local-set-key (kbd "s-i") 'my-org-dict-replace)
            (local-set-key (kbd "s-r") 'my-look-up-word)))
(add-hook 'org-mode-hook 'turn-on-flyspell 'append)
(setq org-startup-indented t)
(org-add-link-type "dict" 'org-dict-open)

(setq org-directory "~/Documents/org")
(setq org-mobile-directory "~/Dropbox/MobileOrg/")
(setq org-default-notes-file (concat org-directory "/capture.org"))
(setq org-mobile-inbox-for-pull org-default-notes-file)

;; org TODO setup
(setq org-todo-keywords
      '((sequence "TODO(t)" "NEXT(n)" "STARTED(s)" "|" "DONE(d!/!)")
        (sequence "WAITING(w@/!)" "SOMEDAY(S!)" "|" "CANCELLED(c@/!)")
        (sequence "TOREAD(r)" "READING(R)" "|" "FINISHED(f!)")))

(setq org-todo-keyword-faces
      `(("TODO" :foreground "orange red" :weight bold)
        ("NEXT" :foreground "cyan" :weight bold)
        ("STARTED" :foreground "cyan" :weight bold)
        ("DONE" :foreground "forest green" :weight bold)
        ("WAITING" :foreground "orange" :weight bold)
        ("SOMEDAY" :foreground "magenta" :weight bold)
        ("CANCELLED" :foreground "forest green" :weight bold)
        ("TOREAD" :foreground "orange red" :weight bold)
        ("READING" :foreground "cyan" :weight bold)
        ("FINISHED" :foreground "forest green" :weight bold)))

(setq org-use-fast-todo-selection t)
(setq org-treat-S-cursor-todo-selection-as-state-change nil)

(setq org-todo-state-tags-triggers
      '(("CANCELLED" ("CANCELLED" . t))
        ("WAITING" ("WAITING" . t))
        ("SOMEDAY" ("WAITING" . t))
        (done ("WAITING"))
        ("TODO" ("WAITING") ("CANCELLED"))
        ("NEXT" ("WAITING"))
        ("STARTED" ("WAITING"))
        ("DONE" ("WAITING") ("CANCELLED"))))

;; org capture setup
(setq org-capture-templates
      '(("t" "todo" entry (file org-default-notes-file)
         "* TODO %?\n%U\n  %i")
        ("b" "book to read" entry (file (concat org-directory "/books.org"))
         "* TOREAD %?\n%U\n  %i")
        ("n" "note" entry (file org-default-notes-file)
         "* %? :NOTE:\n%U\n  %i")
        ("j" "journal" entry (file org-default-notes-file)
         "* %?\n" :clock-in t :clock-keep t)))

;; org refile setup
;; targets include current file and any files in org-agenda-files
(setq org-refile-targets `((nil :maxlevel . 3)
                           (org-agenda-files :maxlevel . 3)
                           (,(concat org-directory "/entertain.org") :maxlevel . 2)
                           (,(concat org-directory "/note.org") :maxlevel . 3)))
(setq org-refile-allow-creating-parent-nodes 'confirm)
(setq org-refile-use-outline-path 'file)
(setq org-outline-path-complete-in-steps nil)
(setq org-completion-use-ido t)

;; org tag setup
(setq org-tag-alist
      '(("CANCELLED" . ?c)
        ("WAITING" . ?w)
        ("NOTE" . ?n)
        ("PROJECT" . ?p)))
(setq org-agenda-tags-todo-honor-ignore-options t)

;; org archive setup
(setq org-archive-mark-done nil)
(setq org-archive-location "%s_archive::* Archived Tasks")

;; org agenda setup
(setq org-agenda-custom-commands
      '(("N" "Notes" tags "NOTE"
         ((org-agenda-overriding-header "Notes")
          (org-tags-match-list-sublevels t)))
        ("b" "Books" tags "BOOK"
         ((org-agenda-overriding-header "Books/!")))
        ("p" "Projects" tags "PROJECT/!"
         ((org-agenda-overriding-header "Projects")))
        (" " "Agenda"
         ((agenda ""
                  ((org-agenda-ndays 2)))
          (tags "PROJECT/!"
                ((org-agenda-overriding-header "Projects")))
          (tags-todo "-WAITING-CANCELLED-BOOK-PROJECT-REFILE/!"
                     ((org-agenda-overriding-header "Tasks")
                      (org-agenda-todo-ignore-scheduled t)
                      (org-agenda-todo-ignore-deadlines t)))
          (tags "BOOK/!"
                ((org-agenda-overriding-header "Books")))
          (tags "REFILE"
                ((org-agenda-overriding-header "Tasks and Notes to Refile")))))))

;; org contrib setup
(require 'org-checklist)
