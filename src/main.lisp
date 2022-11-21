(defpackage csv-to-md-table
  (:use :cl)
  (:export #:main))

(in-package csv-to-md-table)

(defun prepare-row (row)
  (format nil "| ~{~A~^ | ~} |~%" row))

(defun main (input &key (separator #\,))
  (with-output-to-string (s)
    (let ((csv (cl-csv:read-csv (get-output-stream-string input) :separator separator)))
      (format s (prepare-row (car csv)))
      (format s (prepare-row (loop :for x :from 1 :to (length (car csv)) :collect "---")))
      (dolist (item (cdr csv))
        (format s (prepare-row item))))
    s))
