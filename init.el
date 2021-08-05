;; appearance
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(setq-default frame-title-format '("%f"))

;; Load Path(s)
(add-to-list 'load-path "./config")

;; Set up package.el to work with MELPA
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Packages
(setq package-list
	`(
		evil
		evil-commentary
		evil-leader
		evil-matchit
		evil-surround
		key-chord
	)
)

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))


;; Custom configs
(require 'kq-evil)
(require 'kq-keychord)

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
