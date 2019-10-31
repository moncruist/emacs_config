;; Windows configuration

(set-frame-font "Hack 11" nil t)

;; Make sure Unix tools are in front of `exec-path'
(push (expand-file-name "~/AppData/Local/Programs/Git/usr/bin") exec-path)

;; Update PATH from exec-path
(let ((path (mapcar 'file-truename
                    (append exec-path
                            (split-string (getenv "PATH") path-separator t)))))
  (setenv "PATH" (mapconcat 'identity (delete-dups path) path-separator)))
