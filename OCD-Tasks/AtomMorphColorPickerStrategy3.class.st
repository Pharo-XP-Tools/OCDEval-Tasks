Class {
	#name : #AtomMorphColorPickerStrategy3,
	#superclass : #AtomMorphColorPicker,
	#category : #'OCD-Tasks-Task2'
}

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy3 >> changeColorFor: anAtomMorph [
	anAtomMorph color: self availableColors atRandom negated
]

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy3 >> selectColorFor: anAtomMorph [
	anAtomMorph color: (anAtomMorph color negated)
]

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy3 >> setBaseColorFor: anAtomMorph [
	color ifNil:[color := self availableColors at: 50]. 
	anAtomMorph color: color
]
