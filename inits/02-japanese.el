(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)

(require 'mozc-im)
(require 'mozc-popup)
(setq default-input-method "japanese-mozc-im")
(setq mozc-candidate-style 'popup)
(global-set-key (kbd "C-o") 'toggle-input-method)
(define-key isearch-mode-map (kbd "C-o") 'isearch-toggle-input-method)
(add-hook 'input-method-activate-hook
          (lambda() (set-cursor-color "green")))
(add-hook 'input-method-inactivate-hook
          (lambda() (set-cursor-color "black")))

(add-to-list 'default-frame-alist '(font . "ricty-14"))
