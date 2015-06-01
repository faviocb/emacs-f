(defun demo ( )
"demo"
(interactive)
(save-excursion
(let ((count 0))
(goto-char (point-min))
(while (< (point) (point-max))
(forward-word 1)
(setq count (1+ count)))
(message "buffer contains %d words." count))))


;;------------------------------- Emacs Shell mode: how to send region to shell? ----------------------------------------
;;http://stackoverflow.com/questions/6286579/emacs-shell-mode-how-to-send-region-to-shell


(defun sh-send-line-or-region (&optional step)
  (interactive ())
  (let ((proc (get-process "shell"))
        pbuf min max command)
    (unless proc
      (let ((currbuff (current-buffer)))
        (shell)
        (switch-to-buffer currbuff)
        (setq proc (get-process "shell"))
        ))
    (setq pbuff (process-buffer proc))
    (if (use-region-p)
        (setq min (region-beginning)
              max (region-end))
      (setq min (point-at-bol)
            max (point-at-eol)))
    (setq command (concat (buffer-substring min max) "\n"))
    (with-current-buffer pbuff
      (goto-char (process-mark proc))
      (insert command)
      (move-marker (process-mark proc) (point))
      ) ;;pop-to-buffer does not work with save-current-buffer -- bug?
    (process-send-string  proc command)
    (display-buffer (process-buffer proc) t)
    (when step
      (goto-char max)
      (next-line))

    (setq comint-scroll-to-bottom-on-output t)

    ))

(defun sh-send-line-or-region-and-step ()
  (interactive)
  (sh-send-line-or-region t))
(defun sh-switch-to-process-buffer ()
  (interactive)
  (pop-to-buffer (process-buffer (get-process "shell")) t))

;;(define-key sh-mode-map [(control ?j)] 'sh-send-line-or-region-and-step)
;;(define-key sh-mode-map [(control ?c) (control ?z)] 'sh-switch-to-process-buffer)


;;----------------------------------------------------------------------------------------

    (defun kill-other-buffers ()
      "Kill all other buffers."
      (interactive)
      (mapc 'kill-buffer (delq (current-buffer) (buffer-list))))

;;-----------------------------------------------------------------------


(defun fbash ()

  (interactive)

  (find-file (concat "/"  f-gnu-user "@" f-gnu-host ":")) ;;  /username@hostname:
  (setq explicit-shell-file-name "/bin/bash")
  (shell)
  (message "GNU :)")
  )



     
      

;;---------------------------------------------------------------------------------------

(defun fpython ()

  (interactive)
  (fbash)
  (process-send-string nil "python \n")
  )

;;---------------------------------------------------------------------------------------

(defun fvb()
  (interactive)
  (shell-command (concat "VBoxManage.exe startvm " f-virtual-machine))
    (kill-other-buffers)
  )

;;---------------------------------------------------------------------------------------

(defun fpsql ()

  (interactive)

  (setq sql-postgres-login-params
      '((user :default f-pgsql-user)
        (database :default f-pgsql-database)
        (server :default f-pgsql-server)
        (port :default f-pgsql-port)))

  (sql-postgres)

)

;;---------------------------------------------------------------------------------------


(defun fcsc()
  (interactive)
  (setq texto (buffer-string))
  (write-region texto nil "emacs-fcsc-temp-delete.cs")
    (shell-command "csc.exe /target:exe  emacs-fcsc-temp-delete.cs & emacs-fcsc-temp-delete.exe & del emacs-fcsc-temp-delete.exe & del emacs-fcsc-temp-delete.cs")
  )


;;---------------------------------------------------------------------------------------


