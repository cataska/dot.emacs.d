(use-package magit
  :config
  (setq magit-have-graph 'set)
  (bind-keys :map global-map
	     ("C-x gs" . magit-status)))

(provide '49git)
