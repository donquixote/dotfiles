; make sure the target directory is on your load-path
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'php-mode)
(require 'drupal-mode)
(require 'css-mode)
(require 'coffee-mode)

(add-to-list 'auto-mode-alist '("\\.\\(module\\|test\\|install\\|theme\\)$" . drupal-mode))
(add-to-list 'auto-mode-alist '("\\.\\(php\\|inc\\)$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.engine$" . php-mode))

(add-to-list 'auto-mode-alist '("\\.info" . conf-windows-mode))

(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.less$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.scss$" . css-mode))
(setq css-indent-offset 2)

(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

(defun coffee-custom ()
  "coffee-mode-hook"
 (set (make-local-variable 'tab-width) 2))

(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))

(setq js-indent-level 4)

(setq whitespace-action '(auto-cleanup)) ;; automatically clean up bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab)) ;; only show bad whitespace

(setq-default indent-tabs-mode nil)

(setq-default vc-follow-symlinks t)