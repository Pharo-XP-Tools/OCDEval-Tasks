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

{ #category : #'as yet unclassified' }
OCDTaskInstaller class >> installTask2b [

	"Install task 2b. Doesn't configure logging."

	Color indexedColors at: 82 put: (TestColor
			 r: 0.19941348973607037
			 g: 1.0
			 b: 0.0
			 alpha: 1.0).
	MetaLink package addClass: TestColor.

	AtomManager compile: 'initialize 
	AtomApp announcer when: AtomColorChangeRequest send: #requestColorChange: to: self.
	AtomApp announcer when: AtomSelectionRequest send: #requestSelection: to: self.
	AtomApp announcer when: AtomDeselectionRequest send: #requestDeselection: to: self'.

	AtomMorph compile: 'handleMouseMove: event
	negated
		ifTrue: [ ^ self ].
	self isSelected
		ifTrue: [ ^ self ].
	self changeColor'.

	AtomMorph compile: 'handlesMouseDown: event
	^ true'.

	AtomMorph compile: 'mouseDown: event
	event redButtonChanged
		ifTrue: [	^ self ].
	self inspect'.

	AtomApp reset
]

{ #category : #'as yet unclassified' }
OCDTaskInstaller class >> installTasks [

	"Install tasks. Doesn't configure logging."

	self installTask2b
]

{ #category : #'as yet unclassified' }
OCDTaskInstaller class >> removeClassTag: aSymbol [

	| tag |
	tag := self package classTagNamed: aSymbol.
	tag classes do: #removeFromSystem.
	self package removeClassTag: aSymbol
]

{ #category : #'as yet unclassified' }
OCDTaskInstaller class >> removeTaskInstallerSilently [

	self removeFromSystem
]

{ #category : #tests }
OCDTaskInstaller class >> testDebuggingTaskValidity [

	^ (Color indexedColors at: 82) class = Color
]

{ #category : #tests }
OCDTaskInstaller class >> testProgramComprehensionTaskValidity [
	
	"TODO: define the validity of the new comprehension task"
	
	^ true
]
