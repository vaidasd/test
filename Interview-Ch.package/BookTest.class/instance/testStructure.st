as yet unclassified
testStructure
 Namespace example books do:[:book | 
	"A book contains one Portfolio"
	self assert: book  structureOk.
	self assert: book owner notNil. 
]