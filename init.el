;; Initialise the package system first of all.
(package-initialize)

;; Skip the default splash screen.
(setq inhibit-startup-message t)

;; Skip the default end of buffer ring.
(setq ring-bell-function 'ignore)

;; Ensure uniform scrolling in open files.
(setq scroll-conservatively 100)

;; Figure out the current hostname.
(setq hostname (replace-regexp-in-string "\\(^[[:space:]\n]*\\|[[:space:]\n]*$\\)" "" (with-output-to-string (call-process "hostname" nil standard-output))))

;;accept y/n in place of explicit yes and no
(defalias 'yes-or-no-p 'y-or-n-p)

;; Figure out the path to our .emacs.d by getting the path part of the
;; current file (`init.el`).
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) (file-chase-links load-file-name))))

;; load all .el files from modules dir
(add-to-list 'load-path (concat dotfiles-dir "modules"))

(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(setq exec-path (append exec-path '("/usr/local/bin")))

;; Paths to add for custom themes and color schemes
(add-to-list 'custom-theme-load-path "/Users/taufeqrazakh/.emacs.d/emacs-color-theme-solarized")

(setq backup-directory-alist `(("." . "~/.saves")))

(require 'j-package)
(require 'j-haskell)
(require 'j-preferences)
(require 'j-clojure)
 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(delete-selection-mode t)
 '(electric-pair-mode t)
 '(haskell-mode-hook (quote (turn-on-haskell-indentation turn-on-haskell-doc)))
 '(haskell-process-type (quote stack-ghci))
 '(scroll-bar-mode nil)
 '(scroll-conservatively 100)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 180 :family "Monaco")))))
