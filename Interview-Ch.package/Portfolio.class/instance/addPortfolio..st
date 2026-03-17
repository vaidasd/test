adding
addPortfolio: portfolioParm 
	self assert: (portfolioParm isKindOf: Portfolio).
	portfolios add: portfolioParm