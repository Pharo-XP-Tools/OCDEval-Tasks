Class {
	#name : #AtomMorphColorPickerStrategy4,
	#superclass : #AtomMorphColorPicker,
	#category : #'OCD-Tasks-Task2'
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
	color ifNil:[color := (self availableColors at: 37) negated]. 
	anAtomMorph color: color
]
