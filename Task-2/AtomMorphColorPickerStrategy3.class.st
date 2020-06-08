Class {
	#name : #AtomMorphColorPickerStrategy3,
	#superclass : #AtomMorphColorPicker,
	#category : #'Task-2'
}

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy3 >> changeColorFor: anAtomMorph [
	anAtomMorph color: self availableColors atRandom negated
]

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy3 >> selectColorFor: anAtomMorph [
	anAtomMorph color: (anAtomMorph color alpha: 0.5)
]

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy3 >> setBaseColorFor: anAtomMorph [
	color ifNil:[color := self availableColors at: 50]. 
	anAtomMorph color: color
]
