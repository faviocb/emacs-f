(defun init-common ()

;;======================================================
;;====================== per user ======================
;;======================================================

;;----------------------------------------- default directory --------------------------------

(cd f-default-dir)  


;;------------------------ environment variables within emacs without setting them in the OS ------------------


(setenv "PATH"
  (concat
   f-path-putty ";"
   f-path-virtualbox ";"
   f-path-psql ";"
   f-path-dotnetframework ";"
   f-path-curl ";"
   (getenv "PATH")
  )
)

;;====================================================
;;====================== Common ======================
;;====================================================

;;------------------------------------------ load Utilities -----------------------------------
(load "utilities.el")


;;----------------------------------------- melpa --------------------------------

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )





;;-------------------------  themes ----------------------------
    (require 'color-theme)
    (color-theme-initialize)
    (color-theme-charcoal-black)





;;----------------------------------------- empty scratch  and no startup --------------------------------

(setq initial-scratch-message "")
(setq inhibit-startup-message t)

;;----------------------------------------- no toolbar --------------------------------
(tool-bar-mode 0)

;;------------------------------------  Don't let Emacs hurt your ears ----------------------
(setq visible-bell t)

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


;;---------------------------- cursor  -------------------------

(setq-default cursor-type 'bar)


;;---------------------------- nodejs prompt  -------------------------
;; http://stackoverflow.com/questions/13862471/using-node-js-with-js-comint-in-emacs

;;(setq inferior-js-mode-hook
;;      (lambda ()
;;        ;; We like nice colors
;;        (ansi-color-for-comint-mode-on)
;;        ;; Deal with some prompt nonsense
;;        (add-to-list
;;         'comint-preoutput-filter-functions
;;         (lambda (output)
;;           (replace-regexp-in-string "\033\\[[0-9]+[GK]" "" output)))))


)
