
;;; LISP stuff
(put 'if     'lisp-indent-function nil)
(put 'when   'lisp-indent-function 1)
(put 'unless 'lisp-indent-function 1)
(put 'do     'lisp-indent-function 2)
(put 'do*    'lisp-indent-function 2)

;; SLIME 

(add-to-list 'load-path "/home/wise/em-lisp/slime/slime")
;;(add-to-list 'load-path "/home/wise/em-lisp/slime/slime/contrib")
;;(add-hook 'slime-load-hook (lambda () (require 'slime-tramp)))
(setq inferior-lisp-program "/usr/bin/sbcl")
(require 'slime)
(slime-setup)
;;(push (slime-create-filename-translator :machine-instance "orzo"
;;                                        :remote-host "192.168.2.13"
;;                                        :username "wise")
;;      slime-filename-translations)

;; ;translates from emacs buffer to filename on remote machine
;; 
;; (setf slime-translate-to-lisp-filename-function
;;       (lambda (file-name)
;;         (subseq file-name (length "/ssh:[userid]@192.168.2.13:")))
;; 
;;       slime-translate-from-lisp-filename-function
;;       (lambda (file-name)
;;         (concat "/ssh:[userid]@192.168.2.13:" file-name)))
