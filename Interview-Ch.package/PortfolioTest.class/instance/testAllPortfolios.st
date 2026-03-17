as yet unclassified
testAllPortfolios
|europeanPortfolio namespace allNames allChildNames|
 namespace:=Namespace example.
europeanPortfolio:= namespace frameNamed: 'European Portfolio'.
allNames:=#('European Portfolio' 'UK Portfolio' 'France Portfolio' 'Germany Portfolio') .

.
self assert: (europeanPortfolio allPortfolios collect: #name) asSet =  allNames asSet .
allChildNames:=allNames allButFirst .
self assert: (europeanPortfolio allChildPortfolios collect: #name) asSet =  allChildNames asSet.