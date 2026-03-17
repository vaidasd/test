as yet unclassified
testAmount
|namespace asianBook europianBook europeanTrade asianTrade ukPortfolio ukTrade|
namespace:=Namespace example.
asianBook:=namespace frameNamed: 'Asian Book'.
europianBook:=namespace  frameNamed: 'European Book'.
ukPortfolio:=namespace frameNamed: 'UK Portfolio'.
self assert: europianBook portfolio trades size = 1.
europeanTrade:=europianBook portfolio trades anyOne.

self assert: europeanTrade products size = 1.
self assert: europianBook portfolio trades anyOne products anyOne amount  = CashflowProduct defaultAmount .

""
self assert: (asianBook presentValueForMarket: Market twoSampleMarkets first ) = 0.
"add product to asian book and check that the two are equal."
 asianTrade:=europeanTrade copy.
asianBook portfolio addTrade: asianTrade.
self assert: (asianBook presentValueForMarket: Market twoSampleMarkets first ) = (europianBook presentValueForMarket: Market twoSampleMarkets first ).
ukTrade :=europeanTrade copy.
self assert: (asianBook presentValueForMarket: Market twoSampleMarkets first ) = (europianBook presentValueForMarket: Market twoSampleMarkets first ).

ukPortfolio addTrade: ukTrade.
"now European value is doubled"
self assert: (asianBook presentValueForMarket: Market twoSampleMarkets first  ) * 2 = (europianBook presentValueForMarket: Market twoSampleMarkets first  ) .


.
""