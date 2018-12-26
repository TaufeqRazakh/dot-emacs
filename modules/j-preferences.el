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
;; isearch
;; (define-key isearch-mode-map "\e" 'isearch-abort)   ;; \e seems to work better for terminals
;; (global-set-key [escape] 'keyboard-escape-quit)         ;; everywhere else


;; Turn on highlight matching brackets when cursor is on one
(show-paren-mode 1)

;; Use multiple cursors
(use-package multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this-word)
(global-set-key (kbd "C-<") 'mc/mark-previous-word-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Use a search and replace comopatible with multiple cursors
;; (use-package phi-search)
;; (global-set-key (kbd "C-s") 'phi-search)
;; (global-set-key (kbd "C-r") 'phi-search-backward)
;; (define phi-search)

;; Mac style redo
(global-set-key (kbd "C-Z") 'redo)
(global-set-key (kbd "C-z") 'undo)

(provide 'j-preferences)
