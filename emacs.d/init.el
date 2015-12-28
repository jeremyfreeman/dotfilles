(set-keyboard-coding-system nil)

;; http://emacsredux.com/blog/2015/05/09/emacs-on-os-x/
;; use GNU ls for dired
(setq insert-directory-program (executable-find "gls"))

;; Package set up <START>
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

(defvar prelude-packages
    '(evil evil-org evil-leader elfeed org)
      "A list of packages to ensure are installed at launch.")

(dolist (p prelude-packages)
    (when (not (package-installed-p p))
          (package-install p)))
;; Package set up <END>

;; Evil
(setq evil-want-C-i-jump nil)
(require 'evil)
(evil-mode 1)

; https://github.com/cofi/evil-leader
(require 'evil-leader)
(global-evil-leader-mode)

; https://github.com/edwtjo/evil-org-mode
(require 'evil-org)

;; Elfeed set up
(require 'elfeed)
(global-set-key (kbd "C-x w") 'elfeed)
(require 'elfeed-org)
(elfeed-org)
(setq rmh-elfeed-org-files (list "~/reading/elfeed.org"))

; from: https://github.com/cofi/dotfiles/blob/master/emacs.d/config/cofi-evil.el
(cl-loop for (mode . state) in '((elfeed-show-mode             . emacs)
                                 (elfeed-search-mode           . emacs))
         do (evil-set-initial-state mode state))

