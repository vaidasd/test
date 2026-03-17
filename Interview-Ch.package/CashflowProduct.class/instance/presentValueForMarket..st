accessing
presentValueForMarket: aMarket
"After the payment Date, the present value of the product is 0, because the payment is assumed already made"
	| rate years |
	aMarket date > paymentDate ifTrue:[^ 0 ].
	"On the payment Date, the present value is just the amount"
	aMarket date = paymentDate ifTrue:[^ amount ].
	" Before the payment Date, the present value is discounted to the date of the given Market using its discount rate 
    Get a standard PV formula online"
    rate := aMarket discountRate.  "Get the discount rate (e.g., 0.05 for 5%)"
    years := (paymentDate - aMarket date) days / 365.0.
    ^ amount / ((1 + rate) ** years)