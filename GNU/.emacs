;; move this file to "/home/<username>"

;;----------------------------------------- empty message --------------------------------
(setq inhibit-startup-echo-area-message "<username>")

(setq f-virtual-machine "")

(setq f-gnu-user "")
(setq f-gnu-host "")

(setq f-pgsql-user "")
(setq f-pgsql-database "")
(setq f-pgsql-server "")
(setq f-pgsql-port 0)


(setq f-default-dir "/home/<username>/Documents")

(setq f-path-putty "")
(setq f-path-virtualbox "")
(setq f-path-psql "")
(setq f-path-dotnetframework "")
(setq f-path-curl "")


(setq load-path (append load-path (list "/home/<username>/git-repos/emacs-f")))
(load "init-common.el")
(init-common)

(setq load-path (append load-path (list "/home/<username>/git-repos/emacs-f/GNU")))
(load "init-gnu.el")
(init-gnu)

