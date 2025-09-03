(define-fungible-token paybridge-token)

(define-data-var escrow-map
    (map principal uint)
    (map)
)

(define-public (lock-funds (amount uint))
    (begin
        (ft-transfer? sBTC tx-sender (as-contract tx-sender) amount)
        (map-insert escrow-map tx-sender amount)
        (ok "Funds locked")
    )
)

(define-public (release-funds (recipient principal) (amount uint))
    (begin
        (asserts! (is-some (map-get? escrow-map recipient)) "No funds to release")
        (ft-transfer? sBTC (as-contract tx-sender) recipient amount)
        (map-delete escrow-map recipient)
        (ok "Funds released")
    )
)
