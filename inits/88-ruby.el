(require 'rbenv)
(global-rbenv-mode)
(setq rbenv-show-active-ruby-in-modeline t)

(electric-pair-mode t)
(add-to-list 'electric-pair-pairs '(?| . ?|))

(require 'ruby-block)
(setq ruby-block-hightlight-toggle t)

(require 'ruby-end)

(require 'inf-ruby)
(setq add-to-list 'inf-ruby-implementation '("pry" . "pry"))
(setq inf-ruby-default-implementation "pry")
(setq inf-ruby-eval-binding "Pry.toplevel_binding")
(add-hook 'inf-ruby-mode-hook 'ansi-color-for-comint-mode-on)
(setq inf-ruby-prompt-pattern ">> ")

(define-key ruby-mode-map (kbd "C-c c") 'quickrun)

(require 'rcodetools)
(define-key ruby-mode-map (kbd "M-p") 'xmp)

(add-hook 'ruby-mode-hook 'robe-mode)
(autoload 'robe-mode "robe" "Code navigation, documentation lookup and completion for Ruby" t nil)
(require 'helm-robe)
(custom-set-variables '(robe-completing-read-func 'helm-robe-completing-read))

