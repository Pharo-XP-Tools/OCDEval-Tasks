Class {
	#name : #AtomMorphColorPickerStrategy2,
	#superclass : #AtomMorphColorPicker,
	#category : #'Task-2'
}

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy2 >> changeColorFor: anAtomMorph [
	anAtomMorph color: anAtomMorph color duller negated
]

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy2 >> selectColorFor: anAtomMorph [
	anAtomMorph color: (anAtomMorph color muchLighter)
]

{ #category : #'as yet unclassified' }
AtomMorphColorPickerStrategy2 >> setBaseColorFor: anAtomMorph [
	color ifNil:[color := (self availableColors at: 33) ]. 
	anAtomMorph color: color
]
