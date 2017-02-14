;; Don't let emacs blink the cursor.
(blink-cursor-mode 1)

;; Set frame size
(add-to-list 'default-frame-alist '(height . 37))
(add-to-list 'default-frame-alist '(width . 112))

;; Setting frame title format.
(setq frame-title-format "EMACS@%f")

;; Show current time in mode line.
(setq display-time-string-forms
      '(24-hours ":" minutes " " month "/" day))
(display-time-mode 1)
(setq global-mode-string (remove 'display-time-string global-mode-string))
(setq mode-line-end-spaces
      (list (propertize " " 'display '(space :align-to (- right 12)))
            'display-time-string))

(setq scroll-margin 3
      scroll-conservatively 10000
      scroll-preserve-screen-position nil)
(show-paren-mode 1)

(defalias 'yes-or-no-p 'y-or-n-p)

;; Make duplicated filenames more readable.
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward
      uniquify-separator ":")

;; Make window switching not so cumbersome
(windmove-default-keybindings 'shift)

;; Rebind key on Mac
(if (eq system-type 'darwin)
    (progn
      (defadvice ansi-term (after advise-ansi-term-coding-system)
        (set-buffer-process-coding-system 'utf-8-unix 'utf-8-unix))
      (ad-activate 'ansi-term)

      (setq mac-option-modifier 'control)
      (setq mac-command-modifier 'meta)))

;; Disable toolbar
(tool-bar-mode -1)

;; no backup file
(setq make-backup-files nil)

;; Column number
(column-number-mode t)

;; Global linum mode
(global-linum-mode t)

(provide '50config)
