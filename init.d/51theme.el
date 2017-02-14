(use-package color-theme-solarized
  :init
  (require 'color-theme)

  :config
  (set-frame-parameter nil 'background-mode 'dark)
  (load-theme 'solarized t))

(provide '51theme)
