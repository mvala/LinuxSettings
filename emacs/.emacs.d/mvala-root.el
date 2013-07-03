;; ROOT added to include path

(setq root-include (let ((rootsys (getenv "ROOTSYS")))
                          (if rootsys
                               (concat rootsys "/include")
                                   "/usr/include/root/")))
(semantic-add-system-include root-include 'c++-mode)
