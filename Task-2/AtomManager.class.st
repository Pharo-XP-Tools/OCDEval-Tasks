Class {
	#name : #AtomManager,
	#superclass : #Object,
	#instVars : [
		'mainMorph',
		'selection',
		'hasSelection',
		'colorPickers',
		'announcer'
	],
	#category : #'Task-2'
}

{ #category : #'instance creation' }
AtomManager class >> on: anAtomMorph [
	| mgr |
	mgr := self new.
	mgr mainMorph: anAtomMorph.
	^ mgr
]

{ #category : #accessing }
AtomManager >> announcer [
	^ announcer
]

{ #category : #selection }
AtomManager >> changeColor: anAtom [
	|colorPicker|
	anAtom == mainMorph ifTrue:[^self].
	colorPicker := colorPickers at: anAtom ifAbsent:[^self].
	colorPicker changeColorFor: anAtom
]

{ #category : #accessing }
AtomManager >> colorPickers [
	^colorPickers ifNil:[self initalizeColorPickers]
]

{ #category : #selection }
AtomManager >> deselect: anAtom [
	|colorPicker|
	anAtom == mainMorph ifTrue:[^self].
	colorPicker := colorPickers at: anAtom ifAbsent: [^self].
	colorPicker setBaseColorFor: anAtom.
	anAtom isSelected: false
]

{ #category : #accessing }
AtomManager >> hasSelection [
	^ hasSelection
]

{ #category : #accessing }
AtomManager >> hasSelection: anObject [
	hasSelection := anObject
]

{ #category : #initialize }
AtomManager >> initalizeColorPickers [
	colorPickers := IdentityDictionary new.
	mainMorph submorphs
		do: [ :m | 
			colorPickers
				at: m
				put: AtomMorphColorPicker allSubclasses atRandom new ].
	colorPickers
		keysAndValuesDo: [ :morph :colorPicker | colorPicker setBaseColorFor: morph ]
]

{ #category : #initialize }
AtomManager >> initialize [ 
	AtomApp announcer when: AtomActionRequest send: #requestColorChange: to: self.
	AtomApp announcer when: AtomActionRequest send: #requestSelection: to: self.
	AtomApp announcer when: AtomActionRequest send: #requestDeselection: to: self
]

{ #category : #accessing }
AtomManager >> mainMorph [
	^ mainMorph
]

{ #category : #accessing }
AtomManager >> mainMorph: anObject [
	mainMorph := anObject.
	self initalizeColorPickers 
]

{ #category : #requests }
AtomManager >> requestColorChange: anAtomRequest [
	self changeColor: anAtomRequest atom
]

{ #category : #requests }
AtomManager >> requestDeselection: anAtomRequest [
	self deselect: anAtomRequest atom
]

{ #category : #requests }
AtomManager >> requestSelection: anAtomRequest [
	self select: anAtomRequest atom
]

{ #category : #selection }
AtomManager >> select: anAtom [
	|colorPicker|
	anAtom == mainMorph ifTrue:[^self].	
	anAtom isSelected ifTrue:[^anAtom deselect].
	colorPicker := colorPickers at: anAtom ifAbsent: [^self].
	colorPicker selectColorFor: anAtom.
	anAtom isSelected: true
]

{ #category : #accessing }
AtomManager >> selection [
	^ selection
]

{ #category : #accessing }
AtomManager >> selection: anObject [
	selection := anObject
]