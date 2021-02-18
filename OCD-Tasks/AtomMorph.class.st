Class {
	#name : #AtomMorph,
	#superclass : #AtomAbstractMorph,
	#instVars : [
		'isSelected'
	],
	#category : #'OCD-Tasks-Task2'
}

{ #category : #'menu actions' }
AtomMorph >> changeColor [

	AtomApp announcer announce: (AtomColorChangeRequest on: self)
]

{ #category : #'events-processing' }
AtomMorph >> handlesMouseDown: evt [
	^true
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
