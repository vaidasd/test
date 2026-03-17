as yet unclassified
test
 Namespace  example  markets do: [:market | 
	self assert: (market date isKindOf: Date ).
	self assert: (market discountRate  isKindOf: Float )
	]