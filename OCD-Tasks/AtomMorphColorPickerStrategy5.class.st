Class {
	#name : #AtomMorphColorPickerStrategy5,
	#superclass : #AtomMorphColorPicker,
	#category : #'OCD-Tasks-Task-2'
}

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy5 >> changeColorFor: anAtomMorph [
	anAtomMorph color: (anAtomMorph color alpha: Random new next) negated
]

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy5 >> selectColorFor: anAtomMorph [
	anAtomMorph color: anAtomMorph color muchDarker negated
]

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy5 >> setBaseColorFor: anAtomMorph [
	color ifNil:[color := self availableColors at: 15]. 
	anAtomMorph color: color
]
