printing
printOn: stream
	super  printOn: stream.
	"stream nextPutAll: self className; space."
	stream nextPut: $(; nextPutAll: (name ifNil: ['anonymous'] ifNotNil: [name surroundedBySingleQuotes]); nextPut: $).
	