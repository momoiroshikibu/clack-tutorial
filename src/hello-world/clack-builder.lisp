(ql:quickload :clack)

(builder
 ;; ここにミドルウェアを記述
 #'app)
; => 関数(アプリケーション)

(import 'clack.builder:builder)

(defun app (env)
  (declare (ignore env))
  '(200
    (:content-type "text/plain")
    ("Hello, Clack!")))

(clack:clackup
 (builder
  <clack-middleware-session>
  (<clack-middleware-static>
   :path "/public/"
   :root #p"/path/to/static-files/")
  #'app))

