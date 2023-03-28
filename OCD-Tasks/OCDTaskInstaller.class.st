Class {
	#name : #OCDTaskInstaller,
	#superclass : #Object,
	#category : #'OCD-Tasks-Settings'
}

{ #category : #tests }
OCDTaskInstaller class >> buildValidator [
	|validatorClass|
	validatorClass := Object newAnonymousSubclass.
	validatorClass compile: (self class >> #testAmmoliteValidity) sourceCode.
	validatorClass compile: (self class >> #testLightsOutValidity) sourceCode.
	validatorClass compile: ('inspectionMeta ^StRawInspection on: self').
	^validatorClass new
]

{ #category : #installing }
OCDTaskInstaller class >> installTasks [

	"Debugging task"
	SimpleSwitchMorph class slots: #( #corner #count ).
	SimpleSwitchMorph class compile: 'setCorner
	| size |
	size := LOPane size.
	corner := { 1 @ 1 . 1 @ size . size @ 1 . size @ size } atRandom.
	corner := (corner - 1) * LOCell size + (6 @ 6).
	^ corner
	'.
	SimpleSwitchMorph class compile: 'getCorner
	| size |
	size := LOPane size * LOPane size.
	count ifNil: [ count := 0 ].
	count := count + 1.
	count = 1 ifTrue: [ ^ self setCorner ].
	count = size ifTrue: [ count := 0 ].
	^ corner
	'.
	SimpleSwitchMorph compile: 'turnOn
	self color: onColor
	'.
	SimpleSwitchMorph compile: 'position: aPoint
	super position: aPoint.
	aPoint = self class getCorner ifTrue: [
	onColor := offColor.
	]
	'.
	SimpleSwitchMorph removeSelector: #isOn.
	SimpleSwitchMorph removeSelector: #toggleState.
]

{ #category : #tests }
OCDTaskInstaller class >> testAmmoliteValidity [
	
	| student |
	student := AMStudent readFromDataString: 'Test + '.
	^ { '+' . '-' } includes: student marker.
]

{ #category : #tests }
OCDTaskInstaller class >> testLightsOutValidity [

	^ (SimpleSwitchMorph includesSelector: #position:) not
]
