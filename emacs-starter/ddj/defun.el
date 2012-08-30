(defun ddj/add-hooks (hook &rest args)
  (dolist (fn args)
    (add-hook hook fn)))

