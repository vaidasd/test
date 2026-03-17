initialize-release
setName: string owner: party 
	super setName: string.
	self	assert: (party isKindOf: Party).
	owner := party