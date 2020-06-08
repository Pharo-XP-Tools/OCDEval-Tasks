Class {
	#name : #AtomMorphColorPickerStrategy4,
	#superclass : #AtomMorphColorPicker,
	#category : #'Task-2'
}

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy4 >> changeColorFor: anAtomMorph [
	anAtomMorph color: (self availableColors at: 50)
]

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy4 >> selectColorFor: anAtomMorph [
	anAtomMorph color: anAtomMorph color muchDarker
]

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy4 >> setBaseColorFor: anAtomMorph [
	color ifNil:[color := self availableColors atRandom negated]. 
	anAtomMorph color: color
]
