(require 'evil)
(require 'evil-commentary)
(require 'evil-matchit)
(require 'evil-leader)

;;    Note: You should enable `global-evil-leader-mode' before you enable
;;          `evil-mode', otherwise `evil-leader' won't be enabled in initial
;;          buffers (*scratch*, *Messages*, ...).

(global-evil-leader-mode)
(evil-mode 1)
(evil-commentary-mode)
(global-evil-matchit-mode t)

(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "b"    'switch-to-buffer
  "k"    'kill-buffer
)


(provide 'kq-evil)
