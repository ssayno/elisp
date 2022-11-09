;;; fouth.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2022 ssayno
;;
;; Author: ssayno <zhou.alias.gl@gmail.com>
;; Maintainer: ssayno <zhou.alias.gl@gmail.com>
;; Created: November 09, 2022
;; Modified: November 09, 2022
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/guoliang/fouth
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:
(defun fouth-own-sum (&rest numbers)
  "Sum Fucntion for NUMBERS."
  (type-of numbers)
  (if (not (symbolp numbers))
      (let* ((temp-sum 0))
        (dolist (elt numbers)
          (setq temp-sum (+ temp-sum elt)))
        (message "Sum is %d" temp-sum))
      (message "No Inputs")))
(fouth-own-sum 1 2 3 4 5)
(fouth-own-sum)
;;
(defun fouth-foo-first-chapter (base-number &optional sub-integer &rest add-integers)
  "Foo function for BASE-NUMBER SUB-INTEGER ADD-INTEGERS."
  (unless sub-integer
    (setq sub-integer 19))
  (let* ((result 0))
    (setq result (- sub-integer base-number))
    (unless (symbolp add-integers)
      (dolist (elt add-integers)
        (setq result (+ result elt))))
    (message "Result is %d" result)))
(fouth-foo-first-chapter 1 5 3 9)
;; pivotal
(let* ((a 1))
  (message "Number is %d" a)
  (setq a (+ 1 a))
  (message "Number is %d" a))

(provide 'fouth)
;;; fouth.el ends here
