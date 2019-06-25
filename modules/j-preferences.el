;; Making search easier with up and down keys
(define-key isearch-mode-map [down]
  'isearch-repeat-forward)
(define-key isearch-mode-map [up]
  'isearch-repeat-backward)

;; Turn on highlight matching brackets when cursor is on one
(show-paren-mode 1)

;;Show line number   
(global-linum-mode 1)

;; Get recommendations when using C-  
(use-package which-key
  :ensure t
  :init
(which-key-mode))

;; Use auto-complete 
(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))

(provide 'j-preferences)
