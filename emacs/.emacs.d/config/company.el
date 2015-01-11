(require 'company)
(require 'company-go)
(require 'company-anaconda)

(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))

(add-hook 'python-mode-hook (lambda ()
			      (set (make-local-variable 'company-backends) '(company-anaconda))
			      (company-mode)
			      (anaconda-mode)))

(global-set-key (kbd "C-SPC") 'company-complete-common)
