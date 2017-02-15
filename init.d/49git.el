(use-package magit
  :config
  (setq magit-have-graph 'set)
  (global-set-key (kbd "C-c ms") 'magit-status))

(provide '49git)
