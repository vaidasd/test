accessing
allChildPortfolios
|oc|
oc:= OrderedCollection new .
self allChildPortfoliosDo: [:cp | oc add: cp ].
^ oc