(asdf:defsystem {{cookiecutter.project_slug}}
  :author "{{cookiecutter.author}}"
  :description ""
  :depends-on (:log4cl
               :alexandria)
  :serial t
  :components ((:module "src"
                :serial t
                :components ((:file "package")
                             (:file "main"))))
  :in-order-to ((test-op (test-op :{{cookiecutter.project_slug}}/tests))))


(asdf:defsystem {{cookiecutter.project_slug}}/tests
  :depends-on (:{{cookiecutter.project_slug}}
               :parachute)
  :serial t
  :components ((:module "t"
                :components ((:file "{{cookiecutter.project_slug}}-tests"))))
  :perform (test-op (op c) (uiop:symbol-call :parachute :test :{{cookiecutter.project_slug}}/tests)))
