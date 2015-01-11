(use-package evil-org
  :ensure evil-org
  :config
  (evil-leader/set-key-for-mode 'org-mode
    "l" 'org-open-at-point)
  )
