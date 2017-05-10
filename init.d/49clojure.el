(use-package clojure-mode
  :init
  (setq clojure-defun-style-default-indent t)

  :config
  (use-package cider
    :config
    (add-hook 'clojure-mode-hook #'cider-mode)
    (add-hook 'cider-mode-hook #'eldoc-mode)

    (use-package clj-refactor
      :config
      (add-hook 'clojure-mode-hook #'clj-refactor-mode)
      (add-hook 'cider-repl-mode-hook #'clj-refactor-mode)
      (add-hook 'clojure-mode-hook (lambda () (cljr-add-keybindings-with-prefix "C-c C-m")))))
  
  (use-package paredit
    :config
    (add-hook 'clojure-mode-hook 'enable-paredit-mode))

  (use-package rainbow-delimiters
    :config
    (add-hook 'clojure-mode-hook 'rainbow-delimiters-mode))

  (bind-keys :map clojure-mode-map
	     ("RET" . newline-and-indent)))

(provide '49clojure)
