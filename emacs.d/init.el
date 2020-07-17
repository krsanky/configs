;; init.el

;; M-x eval-region

(setq ring-bell-function #'ignore)
(blink-cursor-mode -1)
(setq inhibit-startup-screen t)
(defalias 'yes-or-no-p 'y-or-n-p)

;; -- TABS / SPACES --------------------------------------
(setq tab-width 4 indent-tabs-mode nil)

;; set default tab char's display width to 4 spaces
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; make tab key always call a indent command.
(setq-default tab-always-indent t)

;; make tab key call indent command or insert tab character, depending on cursor position
(setq-default tab-always-indent nil)

;; make tab key do indent first then completion.
(setq-default tab-always-indent 'complete)

(set-default-font "Terminus 16")

;; Character encodings default to utf-8.
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)


(setq initial-scratch-message nil)
(setq line-number-mode               t)
(setq column-number-mode             t)


(show-paren-mode 1)

;;Hide / Show Emacs Widgets
;;Hide / Show Menu bar
;;
;;Hide Menu Bar
;;
;;(menu-bar-mode 0)
;;
;;Show Menu Bar
;;
;;(menu-bar-mode 1)
;;
;;Hide / Show Toolbar
;;
;;Show Tool Bar
;;
;;(tool-bar-mode 1)
;;
;;Hide Tool Bar
;;
;;(tool-bar-mode 0)
;;
;;Hide / Show Scroll Bar
;;
;;Show
;;
;;(scroll-bar-mode 1)
;;
;;Hide
;;
;;(scroll-bar-mode -1)

(savehist-mode 1)
(setq savehist-additional-variables '(kill-ring search-ring regexp-search-ring))

;; To set the file which the minibuffer is saved use:
(setq savehist-file "~/.emacs.d/savehist")
