;;; fifth.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2022 Guoliang
;;
;; Author: Guoliang <guoliang@MacBook-Air-Guoliang.local>
;; Maintainer: Guoliang <guoliang@MacBook-Air-Guoliang.local>
;; Created: November 19, 2022
;; Modified: November 19, 2022
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/guoliang/fifth
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:
(setq lexical-binding t)
(let ((a 1))
  (let ((f (lambda () (message "value is %d" a))))
    (let ((a 2))
      (funcall f))))

(let ((b (get-buffer-create "*string-output*")))
  (let ((standard-output b))
    (print "foo"))
  (set-buffer b)
  (insert "bar")
  (buffer-string))
;; example from emacs manual
(defun getx ()
  x)
(let ((x 2))
  (+ 9 x))
(let ((x 1))
  (getx))
(let ((x 1))
  (funcall 'getx))
;; (with-output-to-temp-buffer )
(with-temp-buffer
  (insert "ok, all is fine")
  (buffer-string))
(let ((x 'lexical))                     ; This is a lexical binding of x.
  (defun get-lexical-x ()
    x)
  (get-lexical-x))
(provide 'fifth)
;;; fifth.el ends here
