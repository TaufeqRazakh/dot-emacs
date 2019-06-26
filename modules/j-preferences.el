;; Skip the default splash screen.
(setq inhibit-startup-message t)

;; Skip the default end of buffer
(setq ring-bell-function 'ignore)

;; Making search easier with up and down keys
(define-key isearch-mode-map [down] 'isearch-repeat-forward)
(define-key isearch-mode-map [up] 'isearch-repeat-backward)

;; Ensure uniform scrolling in open files.
(setq scroll-conservatively 100)

;; Figure out the current hostname.
(setq hostname (replace-regexp-in-string "\\(^[[:space:]\n]*\\|[[:space:]\n]*$\\)" "" (with-output-to-string (call-process "hostname" nil standard-output))))

;; Turn on highlight matching brackets when cursor is on one
(show-paren-mode 1)

;;accept y/n in place of explicit yes and no
(defalias 'yes-or-no-p 'y-or-n-p)

;;Show line number   
(global-linum-mode 1)


;;Set some face properties and editing preferences
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-backends
   (quote
    (company-eclim company-semantic company-clang company-xcode company-cmake company-capf company-files
		   (company-dabbrev-code company-gtags company-etags company-keywords)
		   company-dabbrev)))
 '(delete-selection-mode t)
 '(electric-pair-mode t)
 '(haskell-mode-hook (quote (turn-on-haskell-indentation turn-on-haskell-doc)))
 '(haskell-process-type (quote stack-ghci))
 '(package-selected-packages
   (quote
    (company cider auto-complete which-key haskell-mode use-package paradox)))
 '(scroll-bar-mode nil)
 '(scroll-conservatively 100)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 180 :family "Monaco")))))

;; Get recommendations when using C-  
(use-package which-key
  :ensure t
  :init
(which-key-mode))

;; Use company for completion
(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode))

(provide 'j-preferences)
