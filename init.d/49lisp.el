;; setup roswell
;; by defvar, this setting won't be overwritten in ~/.roswell/helper.el
(defvar roswell-slime-contribs '(slime-fancy
                                 slime-indentation
				 ))
(setq slime-contribs roswell-slime-contribs)

(defun my-lisp-mode-hook ()
  (setq tab-width 2
	indent-tabs-mode nil))

(load (expand-file-name "~/.roswell/helper.el"))
(add-hook 'lisp-mode-hook #'rainbow-delimiters-mode)
(add-hook 'lisp-mode-hook #'paredit-mode)
(add-hook 'lisp-mode-hook #'my-lisp-mode-hook)

(provide '49lisp)
