(defvar my-url-proxy-services '(("http" . "192.168.0.252:3128")))
(defun toggle-proxy ()
  "Toggle the proxy configuration on or off"
  (interactive)
  (if url-proxy-services
      (setq url-proxy-services nil)
    (setq url-proxy-services my-url-proxy-services)))
