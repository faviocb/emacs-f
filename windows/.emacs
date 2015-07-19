;; move this file to "C:\Users\<username>\AppData\Roaming"

;;----------------------------------------- empty message --------------------------------
(setq inhibit-startup-echo-area-message "<username>")

(setq f-virtual-machine "debianWin")

(setq f-gnu-user "gnuusername")
(setq f-gnu-host "192.168.0.1")

(setq f-pgsql-user "username")
(setq f-pgsql-database "databasename")
(setq f-pgsql-server "databaseserver.org")
(setq f-pgsql-port 5432)


(setq f-default-dir "C:\\Users\\<username>\\Documents")

(setq f-path-putty "C:\\Program Files\\putty")
(setq f-path-virtualbox "C:\\Program Files\\Oracle\\VirtualBox")
(setq f-path-psql "C:\\Program Files\\pgAdmin III\\1.20")
(setq f-path-dotnetframework "C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319")
(setq f-path-curl "C:\\Program Files\\curl")


(setq load-path (append load-path (list "C:\\Users\\<username>\\Documents\\git-repos\\emacs-f")))
(load "init-common.el")
(init-common)

(setq load-path (append load-path (list "C:\\Users\\<username>\\Documents\\git-repos\\emacs-f\\windows")))
(load "init-windows.el")
(init-windows)
