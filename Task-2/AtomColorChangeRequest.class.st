Class {
	#name : #AtomColorChangeRequest,
	#superclass : #Announcement,
	#instVars : [
		'atom'
	],
	#category : #'Task-2'
}

{ #category : #'instance creation' }
AtomColorChangeRequest class >> on: atom [
	^self new atom: atom
]

{ #category : #accessing }
AtomColorChangeRequest >> atom [
	^atom 
]

{ #category : #accessing }
AtomColorChangeRequest >> atom: anAtom [
	atom := anAtom
]
