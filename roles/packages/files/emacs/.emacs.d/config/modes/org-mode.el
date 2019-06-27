(require 'org)

(setq org-agenda-span 14)
(setq org-agenda-files '("~/org/gtd.org"))
(setq org-agenda-ndays 14)
(setq org-agenda-show-all-dates t)
(setq org-agenda-skip-deadline-if-done t)
(setq org-agenda-skip-scheduled-if-done t)
(setq org-agenda-window-setup (quote current-window))

(setq org-deadline-warning-days 14)

(setq org-duration-format (quote h:mm))

(setq org-refile-targets '((org-agenda-files :maxlevel . 3)))
(setq org-refile-allow-creating-parent-nodes 'confirm)
(setq org-refile-use-outline-path 'file)

(setq org-capture-templates '(("t" "Create TODO" entry (file+headline "~/org/gtd.org" "New")
			       "* TODO %?")))

(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)
