;;; $DOOMDIR/lib/ai.el -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; AI-related configurations.
;;
;;; Code:

(use-package! copilot
  :hook ((text-mode prog-mode) . #'copilot-mode)
  :bind (:map copilot-completion-map
              ("<tab>" . 'copilot-accept-completion)
              ("C-<tab>" . 'copilot-accept-completion-by-word)))
