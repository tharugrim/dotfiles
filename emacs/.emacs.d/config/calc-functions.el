(defun calc-eval-replace-region (arg beg end)
  "Calculate the region and replace it with the result."
  (interactive "P\nr")
  (let* ((expr (buffer-substring-no-properties beg end))
	 (result (calc-eval expr)))
    (delete-region beg end)
    (goto-char beg)
      (save-excursion
	(insert result))))

(defun calc-eval-line ()
  "Calculate the line and write the result to the next line."
  (interactive)
  (let* ((expr (thing-at-point 'line))
	 (result (calc-eval expr)))
  (end-of-line)
  (newline)
  (save-excursion
    (insert result))))
    
 (defun calc-eval-line-replace ()
  "Calculate the line and replace the line with the result."
  (interactive)
  (let* ((expr (thing-at-point 'line))
	 (result (calc-eval expr)))
    (delete-region (line-beginning-position) (line-end-position))
   (beginning-of-line) 
  (save-excursion
    (insert result))))
