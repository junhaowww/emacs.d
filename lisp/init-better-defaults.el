
;; ------------------------ init-better-defaults.el ----------------------------

;;关闭烦人的出错时的提示音
;;(setq visible-bell t)

;;没有提示音,也不闪屏
(setq ring-bell-function 'ignore)


;;改变emacs固执的yes or no行为
(fset 'yes-or-no-p 'y-or-n-p)

;;显示括号匹配
(show-paren-mode t)

;;但鼠标不会移到匹配括号
(setq show-paren-style 'parenthesis)

;;不要生成临时文件
(setq auto-save-default nil)

;; 不生成备份
(setq make-backup-files nil)


;;设置自动保存的目录
;(setq backup-directory-alist '(("." . "~/.autosave")))

;;允许emacs和外部其他程序的粘贴
(setq x-select-enable-clipboard t)

;;设置tab宽度为4
(setq-default indent-tabs-mode nil)
(setq tab-width 4 c-basic-offset 4)

;;新建文件的编码方式
(set-terminal-coding-system 'utf-8)

;;写文件的编码方式  
;;(set-buffer-file-coding-system 'gb2312)  
(set-buffer-file-coding-system 'utf-8)  
  
;;新建文件的编码方式  
;;(setq default-buffer-file-coding-system 'gb2312)  
(setq default-buffer-file-coding-system 'utf-8)
  
;;终端方式的编码方式  
(set-terminal-coding-system 'utf-8)  
  
;;键盘输入的编码方式  
;;(set-keyboard-coding-system 'gb2312)   
(set-keyboard-coding-system 'utf-8)   
      
;;读取或写入文件名的编码方式  
(setq file-name-coding-system 'utf-8)   

;; restore current workplace
(desktop-save-mode t)

;; match
(electric-pair-mode t)
(electric-indent-mode t)

;; continuous scrolling
(setq scroll-step 1
      scroll-margin 3
      scroll-conservatively 10000)

;; smooth scrolling when using mouse
(setq mouse-wheel-scroll-amount '(0.04))
(setq mouse-wheel-progressive-speed nil)

;; open recent files
(require 'recentf)
(recentf-mode 1)
(setq rectf-max-menu-item 25)


;; 选中删除
(delete-selection-mode t)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)


;; ------------------------ EOF ----------------------------
(provide 'init-better-defaults)