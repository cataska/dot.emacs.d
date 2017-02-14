
(defconst user-emacs-directory
  (file-name-directory (or load-file-name (buffer-file-name)))
  "My emacs config directory.")

(defconst user-cache-directory
  (file-name-as-directory (concat user-emacs-directory ".cache"))
  "My emacs storage area for persistent files.")
;; create the `user-cache-directory' if not exists
(make-directory user-cache-directory t)

(add-to-list 'load-path (concat user-emacs-directory "init.d"))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'pallet)
(pallet-mode t)

;; init files
(require '01server)
(require '20ekey)
(require '49elisp)
(require '49fonts)
(require '50config)

(setq-default custom-file (concat user-cache-directory "custom.el"))
;; load custom-file only when file exist
(when (file-exists-p custom-file)
  (load-file custom-file))
