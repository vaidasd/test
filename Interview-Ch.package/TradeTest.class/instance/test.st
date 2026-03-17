as yet unclassified
test
"Frames can have a name and are constructed with one if required"

 Namespace  example trades do: [:market | 
	self assert: (market date isKindOf: Date ).
	self assert: (market discountRate  isKindOf: Float )
	]
