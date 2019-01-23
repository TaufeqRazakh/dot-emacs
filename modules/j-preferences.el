;; Use cmd + direction keys to move to line extremes
(global-set-key (kbd "s-<right>") 'move-end-of-line)
(global-set-key (kbd "s-<left>") 'move-beginning-of-line)
;; Use cmd + / to comment and uncomment lines
(global-set-key (kbd "s-/") 'comment-line)

;; Making search easier with up and down keys
 (define-key isearch-mode-map [down]
   'isearch-repeat-forward)
(define-key isearch-mode-map [up]
  'isearch-repeat-backward)
; Map escape to cancel (like C-g)...
(define-key isearch-mode-map [escape] 'isearch-abort)


;; Turn on highlight matching brackets when cursor is on one
(show-paren-mode 1)

;; Use multiple cursors
(use-package multiple-cursors)
(global-set-key (kbd "s-.") 'mc/mark-next-like-this-word)
(global-set-key (kbd "s-,") 'mc/mark-previous-word-like-this)

;; Resize windows using simpler cmd and shift and arrow keys
(global-set-key (kbd "M-s-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-s-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-s-<down>") 'shrink-window)
(global-set-key (kbd "M-s-<up>") 'enlarge-window)

;; Mac style redo
(global-set-key (kbd "C-Z") 'redo)
(global-set-key (kbd "C-z") 'undo)

;; Themes to try
(use-package dracula-theme)
(use-package solarized-theme)

(provide 'j-preferences)
