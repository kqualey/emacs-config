;; appearance
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(setq-default frame-title-format '("%f"))
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; packages 
(unless (package-installed-p 'evil)
 (package-install 'evil))
(unless (package-installed-p 'moom)
 (package-install 'moom))
(unless (package-installed-p 'key-chord)
 (package-install 'key-chord)) 

;; evil
(require 'evil)
(evil-mode 1)
(setq evil-want-C-d-scroll t)
(setq evil-want-C-u-scroll t)

;; moom - frame manager
(with-eval-after-load "moom" (setq moom-fill-width 1)(moom-mode 1))

;; keychord  (seems to be the best way to remap 'jk' to evil-mode esc (!?)
(require 'key-chord)
(key-chord-mode 1)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(paredit key-chord moom evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
