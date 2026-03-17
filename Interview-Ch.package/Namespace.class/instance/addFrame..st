adding
addFrame: frameParm 
	"You can add a Frame to a Namespace if it’s not
	anonymous. "
	frameParm isKindOf: Frame.
	^ frameParm hasName
		ifTrue: [
			frames detect:[:frame | frame name = frameParm name] ifFound:[:found | self error: 'frame must have a unique name'] ifNone: [frames add: frameParm]]
		ifFalse: [self error: 'frame must have a name']