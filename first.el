;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.

(+ 1 5)

(message "My list is %S" (list 20 9 0))

(message "My age is %d" 16)

(message "You can use Ctrl+h e to go to the buffer 'Message'")
;; multiple
(* 2 9 3)

;; division
(/ 7 2)

;; float division
(/ 7 2.0)
;; You
;; you
;; you
;; mod
(% 7 4)

;; exp
(expt 2 4)

;; 3. is a integer 4.0 is a float
(integerp 3)                            ;; P is the preview
(integerp 3.)
(integerp 3.0)
(floatp 3.0)
(float 3.3)

;; int to float

(float 4)
(float 3.4)

(truncate 2.3)

;; floor and ceil working as python
(floor 3.4)
(ceiling 3.4)
;; round working as python
(round 3.4)

;; convert String and Number
(string-to-number "4")
(number-to-string 3)

;; all the following are false. They all evaluate to nil.
(message "In elisp, the symbol nil is false, anything else is true. And also nil is equivalent to the empty list (), so () is false")

(if nil "yes" "no")
(if () "yes" "no")
(if '() "yes" "no")
(if (list) "yes" "hello, Elisp")

(message "There is no 'boolean datatype' in Elisp, just remember that nil and empty list are false, anything else is true")
;;
(if "" "yes" "no")

(message "and and or also working in Elisp, just know that most of operations are used in front of parameter in Elisp")

;;
(and nil t)
(or nil t)

(<= 1 3)

;; not equal, just for number and float(numbers)
(/= 2 3)
(/= 2.3 2.5)

;; not also working in elisp
(not (= 2 3))

;; use setq in elisp, these variables is global
(setq x 1)
;; multiple assigment
(setq a 3 b 2 c 7)
(message "x is %d" x)
(message "A is %d, B is %d, C is %d" a b c)

;; use let in elisp, these variable is local
;; in let, the last expression's value is returned
;; (let (var1 var2 …) body)
(let (a b)
  (setq a 3)
  (setq b 31)
  (setq c (* a b))
  (if nil "yes" c)
  )
;; (let ((var1 val1) (var2 val2) …) body)
(let ((a 4) (b 5))
  (* a (+ a b)))

;; condition judge also working in Elisp
;; it has two type
;; first, (if test body)
;; second, (if test true_body false_body)
;; second
(if (3 < 2) 4 7)
;; first
(if (/= a b) (message "They are not equal"))

;; sometimes you need to group several expressions together as one single expression, then you can usse progn
(progn (message "a")
       (message "b"))
;; progn will return the last expression in its body

(progn 3 4)

;; use loop in Elisp
(setq x 9)
(while (> x 0)
  (print (format "number is %d" x))
  (setq x (- x 1)))

(defun myFunction ()
    "testing"
    (print (format "The first function %s" "hhh")))
(myFunction)

;; get the lenght of a string
(length "abc")

;; Join Strings
(concat "hello" "\telisp" "\nHello, elisp")
;; split a string by the characteristic
(split-string "zgl-hao-shuai_shizhende" "-")
;; get substring
(message "(substring STRING &optional FROM TO)
return a substring from position FROM to TO. Position start at 0. By default, TO is to end of string, if omitted. FROM is 0. If negative, count from right.")
;; you can see that this is very similar to python(I like python, so I use it to compare
(substring "zglhaoshuai" - -1)


(setq myStr "swimming in pool")

(string-match "\\([a-z]+?ing\\) " myStr)

(match-string 1 myStr)
;; "swimming"


;; use regexp replace
(replace-regexp-in-string "</*div>" "<p>" "<div> this is a test</div>")

(message "have a test")

(message "have a test again")
(+ 2 5)
;; after mark the region you want, you can use M-x to use
;; this function to know how character in this region 
(defun ff ()
  "sample code to show region  begin/end positions"
  (interactive)
  (message "begin at %s\nend at %s"
           (region-beginning)
           (region-end)))
(ff)
;; (interactive) make the function can work in minibuffer
;; and its main function is used to keyboard-binding
;; if you don't use keyboard-binding, this function just use in this .el file
(defun sum (a b)
  (interactive
   (list
    (read-number "First:")
    (read-number "Second:")))
  (message "The result of %d add %d is %d" a b (+ a b)))

;; use <use-region-p> can check whether the region is active
(defun check-region ()
  "print whether region is active"
  (interactive)
  (if (use-region-p)
      (message "region active")
    (message "region not active")))
;; then I will write a funciton to mark the current line where the cursor on
(defun select-line ()
  "Select current line"
  (interactive)
  (let (s e)
    (setq s (line-beginning-position))
    (setq e (line-end-position))
    (goto-char s)
    (push-mark e)
    (setq mark-active t)))
;; 
(line-beginning-position)
;; go to the end of a line
(end-of-line)
;; go to the beginning of a line
(beginning-of-line)

;; overried? a failed product
;; (defun select-line2 ()
;;   "Select current line"
;;   (interactive)
;;   (let (s e)
;;     (setq s (line-beginning-position))
;;     (setq e (line-end-position))
;;     (beginning-of-line)
;;     (setq mark-active t)
;;     (end-of-line)))


;; about the (interactive)
;; The interactive has two purposes
;;; Make elisp function callable as interactive command
;;; A mechanism for passing arguments to function when called interactively.
;;; most of them as follow
;; s(prompt_string): get a string as argument
;; n(prompt_string): get numbers as argument
;; r: get region begin and end position as argument(number)
;; (list_expression): give a list expression

(defun get-name (x)
  (interactive "sPlease give me your name:")
  (message "Your name is %s." x))

(defun get-age (y)
  (interactive "nPlease give me your age:")
  (message "Your age is %s." (number-to-string y)))

;; get a function to count how many characters in the active region
;; you will know that emacs has own function to finish this, (count-word)
(defun  count-character (x y)
  (interactive "r")
  (message "The characters are %d" (- y x)))

(defun get-info-from-something (x y)
  "ask name and age"
  (interactive
   (list "zgl" "20"))
  (message "Name is %s, age is %s" x y))
;; mix them, you should use \n to get a newline or print <Enter> to get a newline.
(defun get-name-age (x y)
  (interactive "sEnter your name: |\nnEnter your age:")
  (message "Your name is %s, your age is %d" x y))

;; if I want to know more information about the (interactive), I will use (C-h f) and enter interactive to know all the options and others.

;; for many languags, you should know how to input and output, there is basic knowledge.
;; read-file-name: ask user to give a file name.
(defun from-file ()
  "Prompt user to enter a file name, with completion and history support"
  (interactive)
  (message "Informations are %s" (read-file-name "Enter your file name")))
;; get directory
(defun from-directory ()
  "path"
  (interactive)
  (message "Path is %s" (read-directory-name "Directory:")))

;; get string from I/O
(defun ff ()
  "Prompt user to enter a string, with input history support"
  (interactive)
  (setq s (read-string "Enter the string you want to output:")) ;set a value to a variable.
  (message "String is %s." s))

;; get number
(defun get-number ()
  "get numbers in minibuffer"
  (interactive)
  (setq n (read-number "Enter your number:"))
  (message "The number is %d" n))

;; query user for Yes/No(y-or-n-p) it is useful.

(if (y-or-n-p "Just Do It?") "hello, elisp" "hello, LaTeX")

(message "today, end")

;; this is a test
