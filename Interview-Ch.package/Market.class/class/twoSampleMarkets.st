samples
twoSampleMarkets
^ 
#('2026-01-01' '2027-01-01') collect:[:dateString | 
	|market|
	market:=self forDate: dateString asDate.
	"Name them where the date is encoded in the name in some simple manner"
	market setName: dateString.
	market].
