(use-package auto-complete
  :config
  (global-auto-complete-mode t)
  (setq ac-auto-start nil)

  (bind-keys :map global-map
	     ("M-/" . ac-start)
	     :map ac-complete-mode-map
	     ("M-/" . ac-stop))

  (use-package auto-complete-config
    :config
    (ac-config-default)
    (set-default 'ac-sources '(ac-source-abbrev ac-source-words-in-buffer))))

(provide '49auto-complete)
