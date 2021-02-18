Class {
	#name : #AtomMorph,
	#superclass : #AtomAbstractMorph,
	#instVars : [
		'negated',
		'selected'
	],
	#category : #'OCD-Tasks-Task2'
}

{ #category : #'menu actions' }
AtomMorph >> changeColor [ 
	
	AtomApp announcer announce: (AtomColorChangeRequest on: self).
	negated := true
]

{ #category : #'events-processing' }
AtomMorph >> handlesMouseDown: evt [
	^true
]

{ #category : #initialization }
AtomMorph >> initialize [
	super initialize.
	negated := false.
	selected := false
]

{ #category : #'events-processing' }
AtomMorph >> mouseDown: event [

	event redButtonChanged ifTrue: [ 
		self isSelected ifFalse: [ 
			self owner select.

			^ self ].
		self changeColor.
		event wasHandled: true.
		^ self ].
	self owner deselect
]

{ #category : #printing }
AtomMorph >> printOn: aStream [
	aStream nextPutAll: 'Color: '.
	color printOn: aStream
]
