example
example 
|bank books europeanPortfolio europeanBook namespace product trade |
"

Have a way to create an example Namespace outside of any test classes. This namespace
should be interestingly populated. Add to it example frames as you proceed through the
exercises
self newExample
"
namespace:= self new.
books:= OrderedCollection new.
bank:=Party named: 'The Bank'.
books add: (europeanBook:=Book named:'European Book' owner: bank portfolio: (Portfolio named: 'European Portfolio'));
		add: (Book named:'Asian Book'  owner: bank portfolio: (Portfolio named: 'Asian Portfolio'));
		add: (Book named:'American Book'  owner: bank portfolio: (Portfolio named: 'American Portfolio') ).

"add parties to the example namespace"
namespace 
		add: bank;
		add: (Party named: 'Government');
		add: (Party named: 'Tech firm').
		
"add books to the example namespace"	
books do: [:book | namespace add: book].

europeanPortfolio:= Portfolio named: 'European Portfolio'. namespace add: europeanPortfolio.
 
#( 'UK Portfolio' 'France Portfolio' 'Germany Portfolio') do: [:pname | |countryPortfolio|
	countryPortfolio:= Portfolio named: pname. 
	europeanPortfolio addPortfolio: countryPortfolio. namespace add: countryPortfolio
	].
"Update the example European Book so that its Portfolio is European Portfolio above"
europeanBook portfolio: europeanPortfolio.

"Create 2 Markets in the example Namespace with the same default rate but these dates"
#('2026-01-01' '2027-01-01') do:[:dateString | 
	|market|
	market:=Market forDate: dateString asDate.
	"Name them where the date is encoded in the name in some simple manner"
	market setName: dateString.
	namespace add: market].

"Product"
product:= CashflowProduct example.
namespace add: product.

"Trade. Construct a Trade with the example CashflowProduct above"
trade:=Trade example.
trade addProduct: product.

""
europeanPortfolio addTrade: trade.

"(namespace frameNamed: 'Asian Book')  portfolio addTrade: trade copy." 

"	10 timesRepeat:[europeanPortfolio addTrade: trade]."

"we use trade only in this context, no adding to the namespace 
		add: trade".

^ namespace