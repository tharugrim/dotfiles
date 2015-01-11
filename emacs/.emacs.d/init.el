(add-to-list 'load-path (concat user-emacs-directory "config"))
(defconst user-init-dir "~/.emacs.d/config")

(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("f0a99f53cbf7b004ba0c1760aa14fd70f2eabafe4e62a2b3cf5cabae8203113b" "4a60f0178f5cfd5eafe73e0fc2699a03da90ddb79ac6dbc73042a591ae216f03" "cc0dbb53a10215b696d391a90de635ba1699072745bf653b53774706999208e3" default)))
 '(org-agenda-files (quote ("~/docs/org")))
 '(org-directory "~/docs/org")
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-info org-irc org-mhe org-rmail org-w3m org-eshell))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-latex-sectioning-5-face ((t (:inherit nil :foreground "yellow" :weight bold))))
 '(font-latex-slide-title-face ((t (:inherit font-lock-type-face :weight bold :height 1.2)))))


;; load the package framework/manager configuration
(load-user-file "init-package.el")

;; load the user interface settings
(load-user-file "ui.el")

;; evil
(load-user-file "evil-leader.el")
(load-user-file "evil.el")
(load-user-file "evil-org.el")
(load-user-file "evil-surround.el")

;; magit
(load-user-file "magit.el")

;; emmet mode
(load-user-file "emmet-mode.el")

;; org mode
(load-user-file "org.el")

;; start the emacs daemon/server
(server-start)

;; load functions for calculating the region/line with and without replacing
(load-user-file "calc-functions.el")

;; load the proxy configuation and a function to toggle it on or off; default: off
(load-user-file "proxy.el")

(load-user-file "company.el")
