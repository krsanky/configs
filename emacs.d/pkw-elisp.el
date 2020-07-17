;;; pkw-elisp.el ;;;

;;-;;;-;;;;;;;;;;;-;;;;;;;;;;;;;;;----------;;;;;;-;-;

(defun pkw-insert-fn-as-comment ()
  "insert the filename(at point) with comment delimiters appropriate to 
the file-type.  ie. /* */ for c/c++, ### ### for shell/perl, etc."
  (interactive)
  (save-excursion
    (let (fn-ext fn)
      (setq fn-ext (file-name-extension buffer-file-name))
      (setq fn (file-name-nondirectory buffer-file-name))
      (message fn-ext)
      (cond ((string= fn-ext "el")
             (insert ";;; " fn " ;;;\n"))
            ((string= fn-ext "c")
             (insert "/* " fn " */\n"))
            ((string= fn-ext "css")
             (insert "/* " fn " */\n"))
            ((string= fn-ext "xml")
             (insert "<!-- " fn " -->\n"))
            ((string= fn-ext "html")
             (insert "<!-- " fn " -->\n"))
            ((string= fn-ext "java")
             (insert "/* " fn " */\n"))
            ((string= fn-ext "lisp")
             (insert ";;; " fn " ;;;\n"))
            ((string= fn-ext "h")
             (insert "/* " fn " */\n"))
            ((string= fn-ext "cpp")
             (insert "/* " fn " */\n"))
            ((string= fn-ext "pl")
             (insert "### " fn " ###\n"))
            ((string= fn-ext "tcl")
             (insert "### " fn " ###\n"))
            ((string= fn-ext "pro")
             (insert ";;; " fn " ;;;\n"))
            (t
             (insert "### " fn " ###\n"))))))


;;-;;;-;;;;;;;;;;;-;;;;;;;;;;;;;;;----------;;;;;;-;-;

(defun pkw-insert-fn ()
  "insert the filename(at point) "
  (interactive)
  (save-excursion
    (let (fn-ext fn)
      ;;(setq fn-ext (file-name-extension buffer-file-name))
      (setq fn (file-name-nondirectory buffer-file-name))
      (message fn)
      (insert fn ))))

;;-;;;-;;;;;;;;;;;-;;;;;;;;;;;;;;;----------;;;;;;-;-;

(defun pkw-copy-rectangle ()
  "this makes it so you ndon't have to re-paste the rect.
that you cut every time you want to \"copy\" a rect."
  (interactive)
  (save-excursion
    (kill-rectangle (mark) (point))
    (exchange-point-and-mark)
    (yank-rectangle)))

;;-;;;-;;;;;;;;;;;-;;;;;;;;;;;;;;;----------;;;;;;-;-;
(defun pkw-eat-whitespace-fwd ()
  "eat all white space (except one?) from point to the
next non-ws"
  (interactive)
  (save-excursion
    ))

;;-;;;-;;;;;;;;;;;-;;;;;;;;;;;;;;;----------;;;;;;-;-;

(defun insert-function-header () (interactive)
  (insert "  /*///////////////////////////////////*/\n")
  (insert "  /**\n")
  (insert "   * \n")
  (insert "   * @author: terence\n")
  (insert "   * @param: \n")
  (insert "   * @return: \n")
  (insert "   */\n"))



;;-;;;-;;;;;;;;;;;-;;;;;;;;;;;;;;;----------;;;;;;-;-;

(defun insert-file-header () (interactive)
  (insert "/* -*- Mode: C; c-basic-indent: 2;")
  (insert " indent-tabs-mode: nil -*- */ \n")
  (insert "/* $Id: dotemacs.php,v 1.1 2003/05/19 22:50:17 tmtong Exp $ */\n")
  (insert "/*////////////////////////////////////*/\n")
  (insert "/**\n")
  (insert " * \n")
  (insert " * Author: Terence Tong\n")
  (insert " */\n")
  (insert "/*////////////////////////////////////*/\n"))


;;-;;;-;;;;;;;;;;;-;;;;;;;;;;;;;;;----------;;;;;;-;-;
;; COLOR-THEME stuff
(defun pkw-color () 
  (interactive)
  (require 'color-theme)
  (color-theme-dark-laptop)
  ;;(color-theme-clarity) ;;nice
  ;;(color-theme-pok-wob) ;;nice
  ;;(color-theme-oswald) ;;nice?
  ;;(color-theme-billw)
  ;;(color-theme-charcoal-black)
  ;;(color-theme-calm-forest)
  ;;(color-theme-pok-wog)
  ;;(color-theme-dark-blue2)
  ;;(color-theme-gray30)
  ;;(color-theme-hober)
  ;;(color-theme-lawrence)
  ;;(color-theme-lethe)
  ;;(color-theme-ld-dark)
  ;;(color-theme-matrix)
  ;;(color-theme-midnight)
  )



;;-;;;-;;;;;;;;;;;-;;;;;;;;;;;;;;;----------;;;;;;-;-;
(defun kill-other-buffers ()
  "Kill all other buffers."
  (interactive)
  (mapc 'kill-buffer (delq (current-buffer) (buffer-list))))

(defun kill-all-buffers ()
  "Kill all buffers."
  (interactive)
  (mapc 'kill-buffer (buffer-list)))

;;-;;;-;;;;;;;;;;;-;;;;;;;;;;;;;;;----------;;;;;;-;-;
(let ( (write-or-die-time ())
       (write-or-die-init ()) )

  (defun write-or-die ()
    (interactive)
    (setf write-or-die-init (run-with-idle-timer 3 t 'w-or-die)))
  
  (defun w-or-die ()
    (interactive)
    (kill-region (point-max) (- (point-max) 10))
    (setf write-or-die-time (run-with-idle-timer
                             (time-add (current-idle-time)
                                       (seconds-to-time 3))
                             ()
                             'w-or-die)))
  
  (defun no-more-die ()
    (interactive)   
    (cancel-timer write-or-die-init) 
    (cancel-timer write-or-die-time))
  )