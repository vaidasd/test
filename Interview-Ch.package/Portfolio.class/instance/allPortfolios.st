accessing
allPortfolios
|oc|
oc:= OrderedCollection new .
self allPortfoliosDo: [:meOrChildPortfolio | oc add: meOrChildPortfolio ].
^ oc

