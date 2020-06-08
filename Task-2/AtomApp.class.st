Class {
	#name : #AtomApp,
	#superclass : #Object,
	#instVars : [
		'morphs'
	],
	#classInstVars : [
		'announcer'
	],
	#category : #'Task-2'
}

{ #category : #accessing }
AtomApp class >> announcer [ 
	^announcer ifNil:[announcer := Announcer new]
]

{ #category : #'as yet unclassified' }
AtomApp class >> run [
	<example>
	announcer := Announcer new.
	self new open
	
	
]

{ #category : #initialization }
AtomApp >> initialize [ 
	super initialize.
	self initializeMorphs
]

{ #category : #initialization }
AtomApp >> initializeMorphs [
	| i x y mainMorph |
	morphs := OrderedCollection new.
	mainMorph := AtomMorph new bounds: (0 @ 0 extent: 1 @ 1).
	morphs add: mainMorph.
	i := 1.
	x := 0.
	y := 0.
	[ x < 500 ]
		whileTrue: [ [ y < 500 ]
				whileTrue: [ | newMorph |
					newMorph := AtomMorph new.
					newMorph bounds: (x @ y extent: 50 @ 50).
					mainMorph addMorph: newMorph.
					morphs add: newMorph.
					y := y + 50.
					i := i + 1 ].
			x := x + 50.
			y := 0 ].
	AtomManager on: mainMorph.
]

{ #category : #'instance creation' }
AtomApp >> open [
	morphs first openInWindow.
	morphs first window extent: 505 @ 530.
	morphs first extent: 1@1
]
