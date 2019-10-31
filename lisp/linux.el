;; Linux configuration

(set-frame-font "Hack 11" nil t)

;; Setup PATH variable
(setenv "PATH"
        (concat
         (getenv "HOME")
         "/.local/bin:"
         (getenv "PATH")))
(setq exec-path (append '("~/.local/bin") exec-path))
