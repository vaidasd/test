initialize-release
setDate: dateParm discountRate: floatParm
self assert: (dateParm isKindOf: Date).
date:= dateParm.
self assert: floatParm isFloat.
discountRate:=floatParm
