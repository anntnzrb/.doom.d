;;; init.el -*- lexical-binding: t; -*-

;; Reference: <https://github.com/doomemacs/doomemacs/tree/master/modules>

(setopt +literate-config-file (file-name-concat doom-user-dir "readme.org"))

(doom! 
 :os
 (tty)

 :term
 (vterm)

 :completion
 (company +childframe)
 (vertico +icons)

 :ui
 (doom)
 (hl-todo)
 (indent-guides)
 (ligatures)
 (modeline)
 (nav-flash)
 (ophints)
 (popup +defaults)
 (window-select)

 :editor
 (evil +everywhere)
 (format)
 (parinfer)

 :emacs
 (dired +icons)
 (ibuffer +icons)

 :checkers
 (spell +flyspell +hunspell)

 :tools
 (direnv)
 (lookup +dictionary +docset +offline)
 (eval +overlay)
 (lsp +eglot)
 (magit)
 (tree-sitter)

 :lang
 (cc +tree-sitter +lsp)
 (lua +tree-sitter +lsp)
 (nix +tree-sitter +lsp)
 (rust +tree-sitter +lsp)
 (sh +tree-sitter +lsp)

 ;; misc
 (json +tree-sitter +lsp)
 (markdown)
 (org +pandoc)
 (yaml +tree-sitter +lsp)

 :config
 (literate)
 (default +bindings +smartparens))
