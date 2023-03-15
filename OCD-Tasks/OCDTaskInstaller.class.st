Class {
	#name : #OCDTaskInstaller,
	#superclass : #Object,
	#category : #'OCD-Tasks-Settings'
}

{ #category : #tests }
OCDTaskInstaller class >> buildValidator [
	|validatorClass|
	validatorClass := Object newAnonymousSubclass.
	validatorClass compile: (self class >> #testProgramComprehensionTaskValidity) sourceCode.
	validatorClass compile: (self class >> #testDebuggingTaskValidity) sourceCode.
	validatorClass compile: ('inspectionMeta ^StRawInspection on: self').
	^validatorClass new
]

{ #category : #installing }
OCDTaskInstaller class >> installTasks [

	"Debugging task"
	SimpleSwitchMorph class slots: #( #corner ).
	SimpleSwitchMorph class slots: #( #count ).
	SimpleSwitchMorph class compile: 'corner
	count ifNil: [ count := 0 ].
	count < 100 ifTrue: [ 
		count := count + 1.
		^ corner 
	].
	count := 0.
	corner := { 1 @ 1 . 1 @ LOPane size . LOPane size @ 1 . LOPane size @ LOPane size } atRandom.
	corner := (corner - 1) * LOCell size + (6 @ 6).
	^ corner 
	'.
	SimpleSwitchMorph compile: 'turnOn
	self color: onColor
	'.
	SimpleSwitchMorph compile: 'position: aPoint
	super position: aPoint.
	aPoint = SimpleSwitchMorph corner ifTrue: [
		onColor := offColor.
	]
	'.
	SimpleSwitchMorph removeSelector: #isOn.
	SimpleSwitchMorph removeSelector: #toggleState.
]

{ #category : #tests }
OCDTaskInstaller class >> testDebuggingTaskValidity [

	^ (SimpleSwitchMorph includesSelector: #position:) not
]

{ #category : #tests }
OCDTaskInstaller class >> testProgramComprehensionTaskValidity [
	
	"TODO: define the validity of the new comprehension task"
	
	^ true
]
