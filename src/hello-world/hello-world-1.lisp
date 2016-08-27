;; start
;; clackup src/hello-world/hello-world-1.lisp --port 6000
;;
;; stop
;; ps aux | grep roswell | awk 'NR==2' | awk '{print "kill -9 " $2}' | sh

(ql:quickload :clack)

(defun app (env)
  (declare (ignore env))
  '(200
    (:content-type "text-plain")
    ("Hello, World!")))

(clack:clackup #'app)
