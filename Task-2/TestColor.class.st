"
I am a test color for test purposes.
I store myself in 
	Color indexedColors at: 82 
To restore my original value, evaluate:
Color indexedColors at: 82 put: (Color r: 0.19941348973607037 g: 1.0 b: 0.0 alpha: 1.0)
"
Class {
	#name : #TestColor,
	#superclass : #Color,
	#category : #'Task-2'
}

{ #category : #transformations }
TestColor >> duller [
	"This is a test methd, it should not be used"
	
	^self negated
]

{ #category : #transformations }
TestColor >> negated [
	"This is a test methd, it should not be used"
	^self
]

{ #category : #printing }
TestColor >> shortPrintString [
	"Return a short (but less precise) print string for use where space is tight."

	^ String streamContents: [ :s |
				s
					nextPutAll: '(';
					nextPutAll: self class superclass name;
					nextPutAll: ' r: '.
				(self red roundTo: 0.01) printOn: s.
				s nextPutAll: ' g: '.
				(self green roundTo: 0.01) printOn: s.
				s nextPutAll: ' b: '.
				(self blue roundTo: 0.01) printOn: s.
				s nextPutAll: ')' ]
]

{ #category : #printing }
TestColor >> storeOn: aStream [
	self isTransparent
		ifTrue: [ ^ aStream nextPutAll: '(Color transparent)' ].
	aStream
		nextPutAll: '(';
		nextPutAll: self class superclass name;
		nextPutAll: ' r: ';
		print: self red;
		nextPutAll: ' g: ';
		print: self green;
		nextPutAll: ' b: ';
		print: self blue;
		nextPutAll: ' alpha: ';
		print: self alpha;
		nextPutAll: ')'
]
