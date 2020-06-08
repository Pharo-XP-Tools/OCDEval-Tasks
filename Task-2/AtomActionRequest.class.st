Class {
	#name : #AtomActionRequest,
	#superclass : #Announcement,
	#instVars : [
		'atom'
	],
	#category : #'Task-2'
}

{ #category : #'instance creation' }
AtomActionRequest class >> on: atom [
	^self new atom: atom
]

{ #category : #accessing }
AtomActionRequest >> atom [
	^atom 
]

{ #category : #accessing }
AtomActionRequest >> atom: anAtom [
	atom := anAtom
]
