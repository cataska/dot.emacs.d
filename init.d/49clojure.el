(use-package clojure-mode
  :init
  (setq clojure-defun-style-default-indent t)

  :config
  (use-package paredit
    :config
    (add-hook 'clojure-mode-hook 'enable-paredit-mode))

  (use-package rainbow-delimiters
    :config
    (add-hook 'clojure-mode-hook 'rainbow-delimiters-mode))

  (bind-keys :map clojure-mode-map
	     ("RET" . newline-and-indent)))

(provide '49clojure)
