;; Merlin
(setq opam-share (substring (shell-command-to-string "opam config var share") 0 -1))
;; Use the opam installed utop
(setq utop-command "opam config exec -- utop -emacs")
(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))

(use-package tuareg
  :mode (("\\.ml[ily]?$" . tuareg-mode)
	 ("\\.topml$" . tuareg-mode))

  :config
  (use-package utop
    :init
    (autoload 'utop-setup-ocaml-buffer "utop" "Toplevel for OCaml" t)

    :config
    (add-hook 'tuareg-mode-hook 'utop-minor-mode))
  
  (use-package auto-complete
    :config
    (add-hook 'tuareg-mode-hook 'auto-complete-mode))

  (use-package merlin
    :config
    (add-hook 'tuareg-mode-hook 'merlin-mode)
    (setq merlin-ac-setup 'easy)
    (setq merlin-use-auto-complete-mode t)
    (setq merlin-error-after-save nil)))

(provide '49ocaml)
