(defsystem "csv-to-md-table"
  :version "0.0.1"
  :author "nmunro"
  :license "BSD3-Clause"
  :depends-on (:cl-csv)
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "Generate a skeleton for modern project"
  :in-order-to ((test-op (test-op "csv-to-md-table/tests"))))

(defsystem "csv-to-md-table/tests"
  :author "nmunro"
  :license "BSD3-Clause"
  :depends-on ("csv-to-md-table"
               :rove)
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for csv-to-md-table"
  :perform (test-op (op c) (symbol-call :rove :run c)))
