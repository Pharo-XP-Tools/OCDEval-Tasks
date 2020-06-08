Class {
	#name : #AtomMorph,
	#superclass : #Morph,
	#instVars : [
		'negated',
		'mainMorph',
		'selected',
		'hasSelection',
		'atomManager'
	],
	#category : #'Task-2'
}

{ #category : #accessing }
AtomMorph >> atomManager [
	(self owner isKindOf: AtomMorph)
		ifFalse: [ ^ atomManager ].
	^ self owner atomManager
]

{ #category : #accessing }
AtomMorph >> atomManager: anAtomManager [
	atomManager := anAtomManager
]

{ #category : #'menu actions' }
AtomMorph >> changeColor [ 
	"self atomManager changeColor: self."
	AtomApp announcer announce: (AtomColorChangeRequest on: self).
	negated := true
]

{ #category : #'menu actions' }
AtomMorph >> deselect [
	self atomManager deselect: self
]

{ #category : #'events-processing' }
AtomMorph >> handleMouseLeave: event [
	negated := false.
]

{ #category : #'events-processing' }
AtomMorph >> handleMouseMove: event [
	negated
		ifTrue: [ ^ self ].
	selected
		ifTrue: [ ^ self ].
	self changeColor
]

{ #category : #'events-processing' }
AtomMorph >> handlesMouseDown: evt [
	^true
]

{ #category : #'events-processing' }
AtomMorph >> handlesMouseMove: event [
	^ true
]

{ #category : #'events-processing' }
AtomMorph >> handlesMouseOver: event [
	^ true
]

{ #category : #initialization }
AtomMorph >> initialize [
	super initialize.
	negated := false.
	selected := false
]

{ #category : #accessing }
AtomMorph >> isSelected [
	^selected
]

{ #category : #accessing }
AtomMorph >> isSelected: bool [
	selected:= bool
]

{ #category : #'events-processing' }
AtomMorph >> mouseDown: event [
	event redButtonChanged
		ifTrue: [ self select.
			^ self ].
	self inspect
]

{ #category : #'menu actions' }
AtomMorph >> select [
	self atomManager select: self
]
