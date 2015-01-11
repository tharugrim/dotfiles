(use-package org
  :config  (setq org-log-done 'time))

(setq org-default-notes-file "~/docs/org/organizer.org")

(define-key global-map "\C-cc" 'org-capture)

(setq org-todo-keywords
      '((sequence
	 "TODO(t)"
	 "STARTED(s)"
	 "WAITING(w@/!)"
	 "SOMEDAY(.)" "|" "DONE(x!)" "CANCELLED(c@)")
	(sequence "TODELEGATE(-)" "DELEGATED(d)" "COMPLETE(x)")))

(setq org-todo-keyword-faces
      '(("WAITING" . (:foreground "red" :weight bold))
        ("SOMEDAY" . (:foreground "gray" :weight bold))))
