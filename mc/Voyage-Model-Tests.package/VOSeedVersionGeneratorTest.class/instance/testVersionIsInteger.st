tests
testVersionIsInteger
	SystemVersion current major > 5 
		ifTrue: [ ^ self skip ].
	self assert: versionGenerator newVersion isInteger