(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
  ;;disable the default startup-screen
)
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
;;
(set-foreground-color "Wheat")
(set-background-color "DarkSlateGray")
(set-cursor-color "Orchid")
(set-mouse-color "Orchid")
;;设置默认的界面颜色、鼠标指针颜色
(set-default-font "Source Code Pro 10")
;;设置默认字体
(blink-cursor-mode nil)
;;禁止光标闪烁
(global-linum-mode t)
(setq column-number-mode t)
;;显示行列号
(setq default-fill-column 80)
;;设置最大列数为80
(setq default-tab-width 4)
;;成真正的TAB字符，并且加亮显示的。
(setq tool-bar-mode t)
;;保留tool-bar
(setq menu-bar-mode nil)
;;去掉menu-bar
(setq sentence-end "\\([。！？]\\|[.?!][]\"')}]*\\($\\|[ \t]\\)[ \t\n]*")
(setq sentence-end-double-space nil)
;;设置sentence-end可以标识中文标点。不用在fill时在句号后插入两个空格。
(setq default-major-mode 'text-mode)
;;把缺省的major mode设置为text-mode,而不是什么功能也没有的fundamental-mode.
(setq scroll-margin 3
	scroll-conservatively 10000)
;;防止页面滚动，scroll-margin 3可以在靠近屏幕边沿3行时就开始滚动，可以看到很好的上下文。
(show-paren-mode t)
(setq show-paren-style 'parentheses)
;;括号匹配时显示另外一边的括号，而不是烦人的跳到另一个括号。
(mouse-avoidance-mode 'animate)
;;光标靠近鼠标的时候，让鼠标指针自动让开，别挡住视线。
(setq frame-title-format "emacs@%b")
;;在标题栏显示buffer的名字
(auto-image-file-mode)
;;让Emacs可以直接打开和显示图片
(global-font-lock-mode t)
;;进行语法加亮
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'LaTeX-hide-environment 'disabled nil)
;;把这些缺省禁用的功能打开
(setq user-full-name "fanTasy shAo")
(setq user-mail-address "forever.fantasy27@gmail.com")
;;设置有用的个人信息，在很多地方有用。
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)
;;让dired可以递归的拷贝和删除目录
(add-to-list 'load-path
		"~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
;;添加yasnippet
(setq-default make-backup-files nil)
;;不生成临时文件
;;
;;make the emacs a Python IDE
(add-to-list 'load-path
		"~/.emacs.d/plugins/auto-complete-1.3.1")
(require 'auto-complete-config)
(global-auto-complete-mode t)
(setq-default ac-sources '(ac-source-words-in-same-mode-buffers))
(add-hook 'emacs-lisp-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-symbols)))
(add-hook 'auto-complete-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-filename)))
(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue") 
;; 设置比上面截图中更好看的背景颜色
(define-key ac-completing-map "\M-n" 'ac-next)  
;; 列表中通过按M-n来向下移动
(define-key ac-completing-map "\M-p" 'ac-previous)
(setq ac-auto-start 2)
(setq ac-dwim t)
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)

