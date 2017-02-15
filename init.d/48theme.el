(use-package color-theme-solarized
  :init
  (require 'color-theme)

  :config
  (set-frame-parameter nil 'background-mode 'dark)
  (load-theme 'solarized t)
  ;; Hack, see https://github.com/sellout/emacs-color-theme-solarized/issues/165
  (outline-minor-mode t)
  (outline-minor-mode nil))

(provide '48theme)
