
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

(setenv "PATH" (concat "/usr/local/bin/:" (getenv "PATH")))
(setq exec-path (append exec-path '("/usr/local/bin/")))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package which-key
  :ensure t
  :init
  (which-key-mode))

(use-package haskell-mode
  :ensure t
  :init
  (haskell-mode))

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
    ))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (nord)))
 '(custom-safe-themes
   (quote
    ("40da996f3246a3e99a2dff2c6b78e65307382f23db161b8316a5440b037eb72c" default)))
 '(haskell-mode-hook nil)
 '(haskell-stylish-on-save t)
 '(package-selected-packages
   (quote
    (popup\.el auto-complete nord-theme which-key use-package haskell-mode))))

(defalias 'yes-or-no-p 'y-or-n-p)

(setq inhibit-startup-message t)
(setq ring-bell-function 'ignore)
(setq scroll-conservatively 100)
(global-linum-mode t)
(delete-selection-mode 1)
(setq-default indent-tabs-mode nil)
(setq-default cursor-type 'bar)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
'(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 300 :width normal :foundry "nil" :family "Menlo")))))
