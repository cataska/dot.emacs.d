(use-package magit
  :config
  (setq magit-have-graph 'set)
  (global-set-key (kbd "C-x gs") 'magit-status))

(provide '49git)
