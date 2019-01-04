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


(require 'j-package)
(require 'j-haskell)
(require 'j-scala)
(require 'j-preferences)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(cursor-type (quote bar))
 '(custom-enabled-themes (quote (dracula)))
 '(custom-safe-themes
   (quote
    ("617341f1be9e584692e4f01821716a0b6326baaec1749e15d88f6cc11c288ec6" default)))
 '(delete-selection-mode t)
 '(display-line-numbers-grow-only nil)
 '(electric-pair-mode t)
 '(global-display-line-numbers-mode t)
 '(haskell-mode-hook (quote (turn-on-haskell-indentation turn-on-haskell-doc)))
 '(haskell-process-type (quote stack-ghci))
 '(package-selected-packages
   (quote
    (dracula-theme phi-search multiple-cursors counsel swiper ensime purescript-mode flycheck-haskell haskell-mode use-package paradox))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 220 :width normal :foundry "nil" :family "Monaco")))))
