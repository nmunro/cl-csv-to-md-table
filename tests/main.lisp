(defpackage csv-to-md-table/tests/main
  (:use :cl
        :csv-to-md-table
        :rove))
(in-package :csv-to-md-table/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :csv-to-md-table)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
  (format t "Testing~%")
    (ok (= 1 1))))