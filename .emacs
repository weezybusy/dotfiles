;;************************************
;; Add melpa repos
;;************************************

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(when (< emacs-major-version 24)
      (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)


;;************************************
;; My customisations
;;************************************

;; Use 8 spaces for autoindent
(setq c-default-style "linux"
      c-basic-offset 8)

;; Set column-mode to always be on
(setq column-number-mode t)

;; No startup message
(setq inhibit-startup-message t)

;; Have Emacs window to always show your system name
;; and the full path of the buffer you're currently
;; editing
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
            '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))


;;************************************
;; Configure Emacs to use with scheme.
;;************************************

;;; Always do syntax highlighting
(global-font-lock-mode 1)

;;; Also highlight parens
(setq show-paren-delay 0
            show-paren-style 'parenthesis)
(show-paren-mode 1)

;;; This is the binary name of my scheme implementation
(setq scheme-program-name "mzscheme")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3c3836" "#fb4934" "#b8bb26" "#fabd2f" "#83a598" "#d3869b" "#8ec07c" "#ebdbb2"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (sanityinc-tomorrow-day)))
 '(custom-safe-themes
   (quote
    ("bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "4eb982b248bf818a72877ecb126a2f95d71eea24680022789b14c3dec7629c1b" default)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
