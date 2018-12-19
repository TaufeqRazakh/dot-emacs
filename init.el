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

;; Prevent tool bar and scross from appearing
(tool-bar-mode -1)
(scroll-bar-mode -1)

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

(setq backup-directory-alist `(("." . "~/.saves")))

; ; (load-theme 'material t)
(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 60))
; (setq initial-frame-alist '((left . 100) (top . 80)))

(require 'j-preferences)
(require 'j-package)
(require 'j-haskell)
(require 'j-purescript)
(require 'j-scala)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor-type (quote bar))
 '(custom-enabled-themes (quote (leuven)))
 '(delete-selection-mode t)
 '(display-line-numbers-grow-only nil)
 '(electric-pair-mode t)
 '(global-display-line-numbers-mode t)
 '(haskell-mode-hook (quote (turn-on-haskell-indentation turn-on-haskell-doc)))
 '(haskell-process-type (quote stack-ghci))
 '(package-selected-packages
   (quote
    (ensime purescript-mode flycheck-haskell haskell-mode use-package paradox))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 220 :width normal :foundry "nil" :family "Monaco")))))
