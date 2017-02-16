(use-package dired
  :config
  ;; Ask for each directory at top level when want to delete directory
  ;; recursively
  (setq dired-recursive-deletes 'top)
  (setq dired-recursive-copies 'top)
  ;; smart operations between two dired buffer
  (setq dired-dwim-target t)
  ;; dired sort directories first
  (setq dired-listing-switches "-al")
  ;; Avoid error message on Mac
  (when (eq system-type 'darwin)
    (setq dired-use-ls-dired nil))

  (use-package dired-details
    :config
    (setq-default dired-details-hidden-string "--- ")
    (dired-details-install)))

(provide '49dired)
