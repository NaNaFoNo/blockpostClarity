
;; blockpost
;; contract that writes a small post on the chain for a small fee.


;; constants
;;
(define-constant contract-owner tx-sender)

(define-constant price u1000000)  ;; 1STX

;; data maps and vars
;;
(define-data-var total-posts uint u0)

(define-map post principal (string-utf8 500))

;; private functions
;;

;; public functions
;;
(define-read-only (func-get-total-posts) 
  (var-get total-posts)
)

(define-read-only (get-post (user principal)) 
  (map-get? post user)
)
