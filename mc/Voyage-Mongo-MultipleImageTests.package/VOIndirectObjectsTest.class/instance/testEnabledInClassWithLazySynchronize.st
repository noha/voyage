tests
testEnabledInClassWithLazySynchronize

	repository
		ensuringCurrentReferencesOnQueries: false;
		lazySynchronize: true.
	
	self setUpDogWithOutdatedReferenceOf: VOTestDogEnsuringCurrentReferencesOnQueries.

	self assert: dog owner class equals: VOSerializedLazyProxy.
	self assert: dog owner name equals: 'bar'.
	self assert: dog owner class equals: VOTestOwner.
