(require 'rbenv)
(global-rbenv-mode)
(setq rbenv-show-active-ruby-in-modeline t)

(electric-pair-mode t)
(add-to-list 'electric-pair-pairs '(?| . ?|))

(use-package 'ruby-block)
(setq ruby-block-hightlight-toggle t)

(use-package 'ruby-end)

(use-package 'inf-ruby)
(setq inf-ruby-default-implementation "pry")
(setq inf-ruby-eval-binding "Pry.toplevel_binding")
(add-hook 'inf-ruby-mode-hook 'ansi-color-for-comint-mode-on)

(define-key ruby-mode-map (kbd "C-c c") 'quickrun)

(require 'rcodetools)
(define-key ruby-mode-map (kbd "M-p") 'xmp)
