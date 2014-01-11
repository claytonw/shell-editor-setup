;;Bits and pieces cobbled from around.  Just putting it somewhere for backup

;;to set foreground color to white
(set-foreground-color "OliveDrab3")

;;to set background color to black
(set-background-color "black")

(set-face-attribute 'default nil :height 120)

(setq inhibit-startup-message t)

(tool-bar-mode -1)

(menu-bar-mode -1)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default c-basic-offset 2)
(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))
(autoload 'javascript-mode "javascript" nil t)


(add-to-list 'load-path "~/.emacs.d/site-lisp")


(setq ac-auto-start nil)
(global-set-key "\M-/" 'ac-start)

;;(define-key ac-complete-mode-map "\t" 'ac-complete)
;;(define-key ac-complete-mode-map "\r" nil)



;;(define-key ac-complete-mode-map "\C-n" 'ac-next)
;;(define-key ac-complete-mode-map "\C-p" 'ac-previous)


(add-to-list 'auto-mode-alist '("\\.erb$" . html-mode))

(setq-default ispell-program-name "aspell")

(defun create-tags (dir-name)
     "Create tags file."
     (interactive "DDirectory: ")
     (eshell-command 
      (format "find %s -type f -name \"*.[ch]\" | etags -i -" dir-name)))

(defun copy-from-osx ()
  (shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
  (let ((process-connection-type nil)) 
      (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
        (process-send-string proc text)
        (process-send-eof proc))))

(setq interprogram-cut-function 'paste-to-osx)
(setq interprogram-paste-function 'copy-from-osx)

(setq mac-command-modifier 'meta)

;;(set-default-font "Source Code Pro")

(setq load-path (cons "/usr/local/go/misc/emacs" load-path))
(require 'go-mode-load)

(require 'flymake)
 
(defvar go-compiler "go")

(eval-after-load "go-mode"
  '(require 'flymake-go))

;; (add-to-list 'load-path "~/.emacs.d/site-lisp/goflymake")
;; (require 'go-flymake)

(setq c-basic-indent 2)
(setq tab-width 2)
(setq indent-tabs-mode nil)
(setq js-indent-level 2)