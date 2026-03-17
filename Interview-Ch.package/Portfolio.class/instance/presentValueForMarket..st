accessing
presentValueForMarket: market
|value|
value:= 0.
self allTradesDo:[:trade | 
	value:= value + (trade presentValueForMarket: market)
	].
^ value 