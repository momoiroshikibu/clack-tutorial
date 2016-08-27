(ql:quickload :clack)

(defun app (env)
  `(200
    (:content-type "text/plain")
    ("hello stranger from:"
     ,(getf env :remote-addr))))

(clack:clackup #'app)
