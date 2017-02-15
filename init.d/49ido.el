(use-package ido
  :init
  (setq ido-enable-flex-matching t)

  :config
  (define-key ido-file-completion-map "\C-w" 'backward-kill-word)
  (ido-mode t)
  (ido-everywhere 1)

  (use-package ido-vertical-mode
    :config
    (ido-vertical-mode 1)
    (setq ido-vertical-define-keys 'C-n-C-p-up-and-down))

  (use-package flx-ido
    :config
    (flx-ido-mode 1)
    (setq ido-enable-flex-matching t)
    (setq ido-use-face nil)))

(provide '49ido)
