adding
addTrade: tradeParm
	self assert:( tradeParm isKindOf: Trade).
	trades add: tradeParm