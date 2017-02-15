(use-package ido
  :init
  (setq ido-enable-flex-matching t)

  :config
  (define-key ido-file-completion-map "\C-w" 'backward-kill-word)
  (ido-mode t))

(provide '49ido)
