Class {
	#name : #AtomMorph,
	#superclass : #Morph,
	#instVars : [
		'negated',
		'selected'
	],
	#category : #'Task-2'
}

{ #category : #'menu actions' }
AtomMorph >> changeColor [ 
	AtomApp announcer announce: (AtomColorChangeRequest on: self).
	negated := true
]

{ #category : #'menu actions' }
AtomMorph >> deselect [
	AtomApp announcer announce: (AtomDeselectionRequest on: self)
]

{ #category : #'events-processing' }
AtomMorph >> handleMouseLeave: event [
	negated := false.
]

{ #category : #'events-processing' }
AtomMorph >> handleMouseMove: event [
	negated
		ifTrue: [ ^ self ].
	self isSelected
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
			event wasHandled: true.
			^ self ].
	self inspect
]

{ #category : #printing }
AtomMorph >> printOn: aStream [
	aStream nextPutAll: 'Color: '.
	color printOn: aStream
]

{ #category : #'menu actions' }
AtomMorph >> select [
	AtomApp announcer announce: (AtomSelectionRequest on: self)
]
