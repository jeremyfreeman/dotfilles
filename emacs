; My .eamcs file

; setup org-mode 
(setq load-path (cons "~/emacs-packages/org-mode/lisp" load-path))
(setq load-path (cons "~/emacs-packages/org-mode/contrib/lisp" load-path))

; activate org-mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

; deft mode
(require 'deft)