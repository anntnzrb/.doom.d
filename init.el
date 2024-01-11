;;; init.el -*- lexical-binding: t; -*-

(setopt +literate-config-file (file-name-concat doom-user-dir "readme.org"))

(doom! 
 :os
 tty

 :completion
 (company +childframe)
 (vertico +childframe +icons)

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
 (format +onsave)
 (parinfer)

 :emacs
 (dired +icons)
 (ibuffer +icons)

 :checkers
 (spell +flyspell +hunspell)

 :tools
 ;;direnv
 (lookup +dictionary +docset +offline) ;; REVIEW: perf
 (eval +overlay) ;; TODO: tweak
 (lsp +peek) ;; TODO: tweak
 magit
 tree-sitter

 :lang
 (cc +tree-sitter +lsp)
 (json +tree-sitter +lsp)
 (markdown)
 (org +pandoc)
 (rust +tree-sitter +lsp)
 (sh +tree-sitter +lsp)
 (yaml +tree-sitter +lsp)

 :config
 literate
 (default +bindings +smartparens))
