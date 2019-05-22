;;; -*- lexical-binding: t; -*-

(setq user-full-name "Paul Smal"
      user-mail-address "pavel.smal@gmail.com")

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'boiler-plate)
(require 'cfg-even-better-defaults)
(require 'cfg-helper-functions)
(require 'cfg-general-settings)
(require 'cfg-global-keybinds) ;; helm,hydra,crux,smartparens,etc.
(require 'cfg-theme)
(require 'lang-programming-tools) ;; yasnippet,company,dumbjump,projectile,magit,flycheck,etc.
(require 'lang-nix)
(require 'lang-shell)
(require 'lang-lisp-generic)
(require 'lang-elisp)
(require 'lang-common-lisp)
(require 'lang-clojure)
(require 'lang-scheme)
(require 'lang-web)
(require 'lang-css)
(require 'lang-js)

;;; init.el ends here
