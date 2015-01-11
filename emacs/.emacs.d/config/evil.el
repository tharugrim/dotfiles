(use-package evil
  :commands (evil-mode)
  :ensure evil
  :demand evil
  :init (evil-mode 1)
  :config
  (progn '(evil-emacs-state-modes
  (quote
   (magit-commit-mode magit-log-mode magit-stash-mode magit-status-mode))))
  (define-key evil-normal-state-map "\C-]" 'ggtags-find-tag-dwim)
  )
