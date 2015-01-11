;; minimal user interface 
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(load-theme 'ir-black)
(set-frame-font "CMU Typewriter Text 12" nil t)

;; hide startup messages
(setq inhibit-splash-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t)
