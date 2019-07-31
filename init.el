;; Main configuration file

(add-to-list 'load-path "~/.emacs.d/lisp")

;; Environment settings
(if (equal system-type 'darwin)
    (load "~/.emacs.d/lisp/macos.el"))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; General configuration

;; Disable backup

(setq backup-inhibited t)

;; Disable auto-save
(setq auto-save-default nil)

;; Hide toolbar
(tool-bar-mode -1)

;; Hide menubar
(menu-bar-mode -1)

;; Show line numbers
(display-line-numbers-mode t)

;; Packages configuration
(require 'package)
(setq package-archives (quote
			(("melpa" . "http://melpa.org/packages/")
			 ("gnu" . "http://elpa.gnu.org/packages/"))))

;; Flycheck
(require 'flycheck)

;; Projectile
(require 'projectile)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(projectile-mode +1)
(setq projectile-project-search-path '("~/git"))

;; Neotree
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq projectile-switch-project-action 'neotree-projectile-action)

;; Helm
(require 'helm)
(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t
      helm-echo-input-in-header-line t)

;; Cpp style
(require 'moncruist-cpp-style)
(defun moncruist-cpp-mode-hook ()
  (c-add-style "Moncruist" moncruist-cpp-style t))

(add-hook 'c++-mode-hook 'moncruist-cpp-mode-hook)

;; CCLS
(require 'ccls)

;; LSP mode
(require 'lsp-mode)
(add-hook 'c++-mode-hook #'lsp)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(package-selected-packages
   (quote
    (ccls yasnippet magit flycheck company company-lsp helm lsp-mode neotree projectile spacemacs-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
