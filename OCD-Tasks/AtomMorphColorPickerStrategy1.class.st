Class {
	#name : #AtomMorphColorPickerStrategy1,
	#superclass : #AtomMorphColorPicker,
	#category : #'OCD-Tasks-Task2'
}

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy1 >> changeColorFor: anAtomMorph [
	anAtomMorph color: self availableColors atRandom
]

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy1 >> selectColorFor: anAtomMorph [
	anAtomMorph color: (anAtomMorph color alpha: Random new next)
]

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy1 >> setBaseColorFor: anAtomMorph [
	color ifNil:[color := (self availableColors at: 18) lighter]. 
	anAtomMorph color: color
]
