;; バックアップファイル
;;(setq make-backup-files nil)
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))) 

;; 終了時にオートセーブファイルを削除する
(setq delete-auto-save-files t)

;; タブにスペースを使用する
(setq-default tab-width 4 indent-tabs-mode nil)

;; 改行コードを表示する
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;; 複数ウィンドウを禁止する
(setq ns-pop-up-frames nil)

;; ウィンドウを透明にする
;; アクティブウィンドウ／非アクティブウィンドウ（alphaの値で透明度を指定）
(add-to-list 'default-frame-alist '(alpha . (0.85 0.85)))

;; メニューバーを消す
(menu-bar-mode -1)

;; ツールバーを消す
(tool-bar-mode -1)

;; 列数を表示する
(column-number-mode t)

;; 行数を表示する
(global-linum-mode t)

;; カーソルの点滅をやめる
;;(blink-cursor-mode 0)

;; カーソル行をハイライトする
(global-hl-line-mode t)

;; 対応する括弧を光らせる
(show-paren-mode 1)

;; ウィンドウ内に収まらないときだけ、カッコ内も光らせる
(setq show-paren-style 'mixed)
(set-face-background 'show-paren-match-face "grey")
(set-face-foreground 'show-paren-match-face "black")

;; スペース、タブなどを可視化する
(global-whitespace-mode 1)

;; スクロールは１行ごとに
(setq scroll-conservatively 1)

;; シフト＋矢印で範囲選択
(setq pc-select-selection-keys-only t)
(pc-selection-mode 1)

;; C-kで行全体を削除する
(setq kill-whole-line t)

;;; dired設定
(use-package 'dired-x)

;; 時刻表示
;; 以下の書式に従ってモードラインに日付・時刻を表示する
;; (setq display-time-string-forms
;;       '((format "%s/%s/%s(%s) %s:%s" year month day dayname 24-hours minutes)
;;         load
;;         (if mail " Mail" "")))
;; 時刻表示の左隣に日付を追加。
;;(setq display-time-kawakami-form t)
;; 24時間制
;;(setq display-time-24hr-format t)
;; 時間を表示
;;(display-time)

;; Theme
(load-theme 'misterioso t)
