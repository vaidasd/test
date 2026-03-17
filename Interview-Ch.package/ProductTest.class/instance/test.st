as yet unclassified
test
	| asianBook market2026 market2027 market2028 europeanBook |
	market2026:=Namespace example frameNamed: '2026-01-01'.
	market2027:=Namespace example frameNamed: '2027-01-01'.
	market2028 :=Market forDate:  '2028-01-01' asDate. 
	

	asianBook:=Namespace example frameNamed: 'Asian Book'.
	europeanBook:=Namespace example frameNamed: 'European Book'.
	
	asianBook presentValueForMarket: market2026.

	europeanBook presentValueForMarket: market2027. 
	europeanBook presentValueForMarket: market2028. 