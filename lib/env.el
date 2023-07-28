;;; $DOOMDIR/lib/env.el -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; Environment related configurations.
;;
;;; Code:

(let ((rtx-shims-path (expand-file-name "~/.local/share/rtx/shims")))
       (when (file-directory-p rtx-shims-path)
             (add-to-list 'exec-path rtx-shims-path)
             (setenv "PATH" (concat (getenv "PATH") path-separator rtx-shims-path))))
