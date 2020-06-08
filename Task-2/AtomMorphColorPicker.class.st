Class {
	#name : #AtomMorphColorPicker,
	#superclass : #Object,
	#instVars : [
		'color'
	],
	#category : #'Task-2'
}

{ #category : #'as yet unclassified' }
AtomMorphColorPicker class >> random [
	^self subclasses atRandom new
]

{ #category : #'as yet unclassified' }
AtomMorphColorPicker >> availableColors [
	^Color indexedColors copyFrom: 50 to: 150.
]

{ #category : #visiting }
AtomMorphColorPicker >> changeColorFor: anAtomMorph [
	self subclassResponsibility 
	
]

{ #category : #visiting }
AtomMorphColorPicker >> selectColorFor: anAtomMorph [
	self subclassResponsibility 
	
]

{ #category : #visiting }
AtomMorphColorPicker >> setBaseColorFor: anAtomMorph [
	self subclassResponsibility 
	
]
