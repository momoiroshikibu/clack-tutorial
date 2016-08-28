(ql:quickload :clack)

(import '(clack:<middleware>
          clack:call
          clack:call-next))


(defclass <sample-mw> (<middleware>) ())

(defmethod call ((this <sample-mw>) env)
  ;; 前処理
  (let ((response (call-next this env)))
    ;; 後処理
    ))


