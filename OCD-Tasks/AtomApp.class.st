Class {
	#name : #AtomApp,
	#superclass : #Object,
	#instVars : [
		'morphs'
	],
	#classInstVars : [
		'announcer'
	],
	#category : #'OCD-Tasks-Task2'
}

{ #category : #accessing }
AtomApp class >> announcer [ 
	^announcer ifNil:[announcer := Announcer new]
]

{ #category : #accessing }
AtomApp class >> reset [
	announcer := nil
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

	| x y mainMorph |
	morphs := OrderedCollection new.
	mainMorph := AtomMorph new bounds: (0 @ 0 extent: 1 @ 1).
	morphs add: mainMorph.

	x := 0.
	y := 0.
	[ x < 400 ] whileTrue: [ 
		[ y < 400 ] whileTrue: [ 
			| newMorph |
			newMorph := AtomMorphArea new.
			newMorph bounds: (x @ y extent: 200 @ 200).
			mainMorph addMorph: newMorph.
			morphs add: newMorph.
			y := y + 200 ].
		x := x + 200.
		y := 0 ].
	AtomManager on: mainMorph
]

{ #category : #'instance creation' }
AtomApp >> open [
	morphs first openInWindow.
	morphs first window extent: 410 @ 432.
	morphs first extent: 1@1
]
