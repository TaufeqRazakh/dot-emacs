;; Use cmd + direction keys to move to line extremes
(global-set-key (kbd "s-<right>") 'move-end-of-line)
(global-set-key (kbd "s-<left>") 'move-beginning-of-line)
;; Use cmd + / to comment and uncomment lines
(global-set-key (kbd "s-/") 'comment-line)

(provide 'j-preferences)
