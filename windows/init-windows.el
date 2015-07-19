(defun init-windows ()


;;----------------------------------------- start emacs-server  --------------------------------

(server-start)

;; M-x server-star
;; http://stackoverflow.com/questions/455077/how-to-create-a-right-click-context-shell-shortcut-edit-with-emacs


;;----------------------------------------- tramp / putty plink --------------------------------
 
(require 'tramp)
(setq tramp-default-method "plink")

;;------------------------------------------ remote shell windows --> GNU/linux -------------------------

;;(setq explicit-shell-file-name "/bin/bash")


;;----------------------------------------- font --------------------------------

(set-face-attribute 'default nil :height 100)

(set-face-attribute 'default nil :font  "Consolas" )
(set-frame-font   "Consolas" nil t)

)
