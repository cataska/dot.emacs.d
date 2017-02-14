(use-package elisp-mode
  :config
  (use-package rainbow-delimiters
    :config
    (add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode))
  
  (use-package paredit
    :config
    (add-hook 'emacs-lisp-mode-hook #'paredit-mode)))

(provide '49elisp)
