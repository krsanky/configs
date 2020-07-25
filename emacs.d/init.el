(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward)

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

(server-start)

(global-set-key "\M-g" 'goto-line)

(setq ring-bell-function #'ignore)
(blink-cursor-mode -1)
(setq inhibit-startup-screen t)
(defalias 'yes-or-no-p 'y-or-n-p)

(setq initial-scratch-message nil)
(setq line-number-mode               t)
(setq column-number-mode             t)

(show-paren-mode 1)
(setq show-trailing-whitespace t)

;; turn off colors / syntax highlighting
(global-font-lock-mode 0)


;; package stuff MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)


;; -- TABS / SPACES --------------------------------------
;; (setq tab-width 4 indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
;;(setq-default c-basic-offset 4)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

;; make tab key always call a indent command.
;;(setq-default tab-always-indent t)
;; make tab key call indent command or insert tab character, depending on cursor position
;;(setq-default tab-always-indent nil)
;; make tab key do indent first then completion.
;;(setq-default tab-always-indent 'complete)


;; GUI ------------------------------------------
(set-default-font "Terminus 16")

;;(menu-bar-mode 0)
;;(menu-bar-mode 1)
;;(tool-bar-mode 1)
;;(tool-bar-mode 0)
;;(scroll-bar-mode 1)
;;(scroll-bar-mode -1)



;; Character encodings default to utf-8.
;;(prefer-coding-system 'utf-8)
;;(set-language-environment 'utf-8)
;;(set-default-coding-systems 'utf-8)
;;(set-terminal-coding-system 'utf-8)
;;(set-selection-coding-system 'utf-8)





(savehist-mode 1)
(setq savehist-additional-variables '(kill-ring search-ring regexp-search-ring))
(setq savehist-file "~/.emacs.d/savehist")

;; ---- this is the auto stuff
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (elpy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
