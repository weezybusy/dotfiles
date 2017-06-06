(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(when (< emacs-major-version 24)
      (add-to-list 'package-archives
                   '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

; Convinient shortcuts
(global-set-key (kbd "C-?") 'help-command)
(global-set-key (kbd "M-?") 'mark-paragraph)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)

; Show line numbers
;(add-hook 'prog-mode-hook 'linum-mode)

; Set C indentation to 8 spaces
(setq-default c-basic-offset 8)

; Remove unwanted UI elements
(menu-bar-mode -1)
(when (display-graphic-p)
    (tool-bar-mode -1)
      (scroll-bar-mode -1))

; No startup and start in home directory
(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)
(setq initial-scratch-message nil)

; Scroll like in Vim
(setq scroll-step            1
      scroll-conservatively  10000)

; Handle autosave
(defvar backup-dir (expand-file-name "~/.emacs.d/emacs_backup/"))
(defvar autosave-dir (expand-file-name "~/.emacs.d/autosave/"))
(setq backup-directory-alist (list (cons ".*" backup-dir)))
(setq auto-save-list-file-prefix autosave-dir)
(setq auto-save-file-name-transforms `((".*" ,autosave-dir t)))
(setq tramp-backup-directory-alist backup-directory-alist)
(setq tramp-auto-save-directory autosave-dir)

; Show trailing whitespace
(require 'whitespace)
(setq-default show-trailing-whitespace t)

(defun no-trailing-whitespace ()
    (setq show-trailing-whitespace nil))

(add-hook 'minibuffer-setup-hook
          'no-trailing-whitespace)
(add-hook 'eww-mode-hook
          'no-trailing-whitespace)
(add-hook 'ielm-mode-hook
          'no-trailing-whitespace)
(add-hook 'gdb-mode-hook
         'no-trailing-whitespace)
(add-hook 'help-mode-hook
          'no-trailing-whitespace)
