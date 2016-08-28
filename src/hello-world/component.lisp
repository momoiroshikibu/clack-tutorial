(ql:quickload :clack)

;; importing symbols for readability.
;; (import '(clack:call clack:<component>))

(defclass <sample-app> (<component>) ())

(defmethod call ((this <sample-app>) env)
  (declare (ignore env))
  '(200
    (:content-type "text/plain")
    ("Hello, Cack!")))

(clack:clackup
 (make-instance '<sample-app>))

