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
