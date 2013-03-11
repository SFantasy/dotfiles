(eval-when-compile
  (require 'color-theme))

(defun color-theme-example ()
  (interactive)
  (color-theme-install
   '(color-theme-example
     ((background-color . "#363636")
      (background-mode . dark)
      (border-color . "black")
      (cursor-color . "black")
      (foreground-color . "#ffffff")
      (mouse-color . "black"))
     (region ((t (:foreground "#3f3f3f" :background "#dcdccc"))))
     (underline ((t (:foreground "yellow" :underline t))))
     (mode-line ((t (:foreground "dark cyan" :background "wheat" :box (:line-width -1 :style release-button)))))
     (mode-line-buffer-id ((t (:bold t :weight bold :foreground "dark cyan" :background "wheat"))))
     (mode-line-emphasis ((t (:bold t :weight bold))))
     (mode-line-hightlight ((t (:box (:line-width 2 :color "grey40" :style released-button)))))
     (mode-line-inactive ((t (:background "grey90" :foreground "grey20" :box(:line-width -1 :color "grey75" :style nil) :weight light))))
     (modeline-mousable ((t (:foreground "dark cyan" :background "wheat"))))
     (modeline-mousable-minor-mode ((t (:foreground "dark cyan" :background "wheat"))))
     (mouse ((t (nil))))
     (italic ((t (:foreground "dark red" :italic t :slant italic))))
     (bold-italic ((t (:foreground "dark red" :bold t :italic t :slant italic))))
     (font-lock-comment-face ((t (:foreground "Firebrick"))))
     (bold ((t (:bold)))))))
