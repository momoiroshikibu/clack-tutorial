(ql:quickload :clack)

(defun app (env)
  (cond
    ((string= (getf env :path-info) "/")
     '(200
       (:content-type "text/html")
       ("<ul><li><a href='./one'>one</a></li><li><a href='./two'>two</a></li></ul>")))
    ((string= (getf env :path-info) "/one")
     '(200
       (:content-type "text/html")
       ("<h1>one</h1>")))
    ((string= (getf env :path-info) "/two")
     '(200
       (:content-type "text/html")
       ("<h1>two</h1>")))
    (t
     '(404
       (:content-type "text/plain")
       ("Not Found")))))

(clack:clackup #'app)

