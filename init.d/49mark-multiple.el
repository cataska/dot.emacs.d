(use-package multiple-cursors
  :config
  (bind-keys :map global-map
	     ("C-<" . mc/mark-previous-like-this)
	     ("C->" . mc/mark-next-like-this)
	     ("C-M-m" . mc/mark-more-like-this)
	     ("C-*" . mc/mark-all-like-this)
	     ("C-x r t" . set-rectangular-region-anchor)))

(provide '49mark-multiple)
