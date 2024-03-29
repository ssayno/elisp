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


;; define a symbol as variable
(setq string-vr "ok")
(message "String variable is %s" string-vr)
(defvar fouth-symbol-vr "no")
(type-of string-vr)
(type-of fouth-symbol-vr)
(symbolp string-vr)
(symbolp fouth-symbol-vr)
(defvar te "ok")
(defun te () (message "ok"))
te
(te)
(symbolp 'string-vr)
(symbol-name 'string-vr)
(symbol-value 'string-vr)
(symbolp 'fouth-symbol-vr)
(symbol-name 'fouth-symbol-vr)
(symbol-value 'fouth-symbol-vr)
;; setq also specify a symbol
(symbolp (string ?a ?b ?c))
(symbolp (make-string 8 ?x))
;; symbol make
(setq sym (intern "foo"))
sym
(eq sym 'foo)
(symbol-name 'sym)
(symbol-value 'sym)
;; setq also set symbol, specity symbol value.
(setq sbn "Are you ok!")
(symbol-name 'sbn)
;; (symbol-name (string ?a ?b))
;;
;; symbol function usage
(setq ve (obarray-make 10))
(setq ve2 (obarray-make 10))
(type-of ve)
(intern "foo-own" ve)
(intern-soft "foo-own" ve) ; => t
(intern-soft "foo-own" ve2) ;=> nil
(intern-soft "foo-own") ;=> nil
(unintern "foo-own" ve)
(unintern "foo-own")
(intern-soft "foo-own" ve) ;=> nil
(intern-soft "foo-own") ;=> nil
;; obarray
;;
;;
(type-of obarray)
(provide 'fouth)
;;; fouth.el ends here
