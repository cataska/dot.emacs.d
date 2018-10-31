(use-package rust-mode
  :init
  (setq rust-format-on-save t)

  :config
  (use-package cargo
    :config
    (add-hook 'rust-mode-hook 'cargo-minor-mode)))

(provide '49rust)
