(ql:quickload :clack)

(import '(clack:wrap
          clack:middleware.static:<clack-middleware-static>))

(defun app (env)
  '(200
    (:content-type "text/plain")
    ("Hello, Clack!")))

(defvar mw
  (make-instance '<clack-middleware-static>
                 :path "/public"
                 :root #p"/path/to/static-files/"))

(clack:clackup
 (wrap mw #'app))

;; multiple nests
;; (clack:clackup
;;  (wrap mw3
;;        (wrap mw2
;;              (wrap mw1 #'app))))
