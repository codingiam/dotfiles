(require-package 'ido-vertical-mode)
(ido-vertical-mode 1)

(require-package 'flx-ido)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

(require-package 'rbenv)
(global-rbenv-mode)

(require-package 'projectile)
(add-hook 'ruby-mode-hook 'projectile-mode)

;(require-package 'projectile-rails)
;(add-hook 'projectile-mode-hook 'projectile-rails-on)

;(cua-mode 1)

(setq-default buffer-quit-function
 #'(lambda () (message "Are you trying to quit?")))

(require-package 'neotree)
(global-set-key [f8] 'neotree-toggle)

(require-package 'evil)
(evil-mode 0)

(provide 'init-local)
