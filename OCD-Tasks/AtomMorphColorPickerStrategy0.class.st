Class {
	#name : #AtomMorphColorPickerStrategy0,
	#superclass : #AtomMorphColorPicker,
	#category : #'OCD-Tasks-Task-2'
}

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy0 >> changeColorFor: anAtomMorph [
	anAtomMorph color: anAtomMorph color negated
]

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy0 >> selectColorFor: anAtomMorph [
	anAtomMorph color: anAtomMorph color negated
]

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy0 >> setBaseColorFor: anAtomMorph [
	color ifNil:[color := self availableColors at: 1]. 
	anAtomMorph color: color
]
