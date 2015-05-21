(defun init ( )

;;======================================================
;;====================== per user ======================
;;======================================================

;;----------------------------------------- empty message --------------------------------
;;TODO


;;------------------------------------------ load Utilities -----------------------------------
(load "utilities.el ")

;;------------------------------------------ environment variable emacs only -----------------------------------
;;TODO


;;====================================================
;;====================== Common ======================
;;====================================================

;;----------------------------------------- start emacs-server  --------------------------------

(server-start)

;; M-x server-star
;; http://stackoverflow.com/questions/455077/how-to-create-a-right-click-context-shell-shortcut-edit-with-emacs

;;----------------------------------------- melpa --------------------------------

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )


;;----------------------------------------- font --------------------------------

(set-face-attribute 'default nil :height 100)

(set-face-attribute 'default nil :font  "Consolas" )
(set-frame-font   "Consolas" nil t)


;;----------------------------------------- empty scratch  and no startup --------------------------------

(setq initial-scratch-message "")
(setq inhibit-startup-message t)

;;----------------------------------------- no toolbar --------------------------------
(tool-bar-mode 0)



;;======================================================
;;======================  notes   ======================
;;======================================================

;; #Emacs, naked	http://bzg.fr/emacs-strip-tease.html

;; This is bound to f11 in Emacs 24.4
;;(toggle-frame-fullscreen)

;; Who use the bar to scroll?
;;(scroll-bar-mode 0)

;; You can also set the initial frame parameters
;; (setq initial-frame-alist
;;       '((menu-bar-lines . 0)
;;         (tool-bar-lines . 0)))


;; Prevent the cursor from blinking
;;(blink-cursor-mode 0)

;; Don't let Emacs hurt your ears
;;(setq visible-bell t)

;;---------------------------------------- UPPERCASE / lowercase? ----------------------

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)


;;-----------------------------------------    email ? ------------------------
;;TODO


;;---------------------------- Markdown -------------------------

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))






)
