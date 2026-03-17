as yet unclassified
testPresentValue
"Create 2 Markets in the example Namespace with the same default rate but these dates"

| theCashflowProduct twoMarkets |
twoMarkets:=Market twoSampleMarkets.
 
theCashflowProduct:= CashflowProduct example.
self assert: (theCashflowProduct presentValueForMarket: twoMarkets first) =  (CashflowProduct defaultAmount / (1+ Market defaultDiscountRate)) .

self assert: (theCashflowProduct presentValueForMarket: twoMarkets second) = theCashflowProduct amount.
self assert: (theCashflowProduct presentValueForMarket: (Market forDate:  (twoMarkets second date addDays: 1))  ) = 0 .


