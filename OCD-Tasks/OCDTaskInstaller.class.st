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
	SimpleSwitchMorph compile: 'onColor
		^ onColor.
	'.
	SimpleSwitchMorph compile: 'offColor
		^ offColor.
	'.
	SimpleSwitchMorph class compile: 'new
		| morph |
		morph := super new.
		LOCell allInstances size = 48 ifTrue: [
			morph onColor: morph offColor.
		].
		^ morph.
	'.
	(self environment at: #LightsOutGame) removeSelector: #close.
]

{ #category : #tests }
OCDTaskInstaller class >> testDebuggingTaskValidity [

	| loCellClass cell |
	loCellClass := self environment at: #LOCell.
	cell := loCellClass allInstances at: 48.
	^ SimpleSwitchMorph class selectors isEmpty or: [ 
		  cell onColor ~= cell offColor 
	]
]

{ #category : #tests }
OCDTaskInstaller class >> testProgramComprehensionTaskValidity [
	
	"TODO: define the validity of the new comprehension task"
	
	^ true
]
