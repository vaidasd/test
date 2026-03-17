testing
structureOk
	^ (portfolio isKindOf: Portfolio)
		and: [owner isKindOf: Party]