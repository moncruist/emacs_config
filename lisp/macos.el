;; MacOS specific configuration

(add-to-list 'exec-path "/usr/local/opt/llvm/bin/")
(add-to-list 'exec-path "/usr/local/bin/")

(setenv "PATH"
  (concat
   "/usr/local/opt/llvm/bin/" ":"
   "/usr/local/bin/" ":"
   (getenv "PATH")
  )
)

;; Bigger fonts on Macbook Pro
(set-frame-font "Hack 14" nil t)
