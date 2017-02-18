
(defconst user-emacs-directory
  (file-name-directory (or load-file-name (buffer-file-name)))
  "My emacs config directory.")

(defconst user-cache-directory
  (file-name-as-directory (concat user-emacs-directory ".cache"))
  "My emacs storage area for persistent files.")
;; create the `user-cache-directory' if not exists
(make-directory user-cache-directory t)

(add-to-list 'load-path (concat user-emacs-directory "init.d"))
(add-to-list 'auto-mode-alist '("Cask$" . emacs-lisp-mode))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'pallet)
(pallet-mode t)

;; Bring $PATH variable to emacs
(use-package exec-path-from-shell
  :config
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize)))

;; init start
(use-package 01server)
(use-package 20ekey)
(use-package 48theme)
(use-package 49clojure)
(use-package 49dired)
(use-package 49elisp)
(use-package 49fonts)
(use-package 49git)
(use-package 49ido)
(use-package 49mark-multiple)
(use-package 50config)
;; init end

(setq-default custom-file (concat user-cache-directory "custom.el"))
;; load custom-file only when file exist
(when (file-exists-p custom-file)
  (load-file custom-file))
