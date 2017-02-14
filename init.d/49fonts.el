(defvar cjk-fonts
  '("Noto Sans T Chinese"
    "Noto Sans S Chinese"
    "Noto Sans Japanese"
    "WenQuanYi Zen Hei"
    "WenQuanYi Micro Hei"
    ;;"AR Heiti Light B5"
    "cwTexYen"
    "Songti SC"))

(defvar emacs-cjk-font (car cjk-fonts))

(defvar emacs-english-font "Monaco")

(customize-set-variable
 'face-font-family-alternatives
       (cons (cons "Han" cjk-fonts)
             face-font-family-alternatives))

(when (fboundp 'set-fontset-font)
  (set-fontset-font t 'han "Han")
  (set-fontset-font t 'kana "Han"))

(defun set-cjk-font (charset font-name size)
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family font-name :size size)))

(defun set-font (english chinese size-pair)
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-cjk-font charset chinese (cdr size-pair)))
  (set-frame-font (format "%s:pixelsize=%d" english (car size-pair)) t))

(set-font emacs-english-font emacs-cjk-font '(14 . 16))

(provide '49fonts)
