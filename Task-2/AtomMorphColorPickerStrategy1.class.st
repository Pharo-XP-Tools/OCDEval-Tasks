Class {
	#name : #AtomMorphColorPickerStrategy1,
	#superclass : #AtomMorphColorPicker,
	#category : #'Task-2'
}

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy1 >> changeColorFor: anAtomMorph [
	anAtomMorph color: self availableColors atRandom
]

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy1 >> selectColorFor: anAtomMorph [
	anAtomMorph color: (anAtomMorph color alpha: 0)
]

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy1 >> setBaseColorFor: anAtomMorph [
	color ifNil:[color := self availableColors atRandom lighter]. 
	anAtomMorph color: color
]
