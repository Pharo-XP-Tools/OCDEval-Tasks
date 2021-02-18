Class {
	#name : #AtomMorphArea,
	#superclass : #AtomAbstractMorph,
	#category : #'OCD-Tasks-Task2'
}

{ #category : #'as yet unclassified' }
AtomMorphArea >> build: aBlock [
	self buildMorphs.
	self submorphs do: aBlock
]

{ #category : #'as yet unclassified' }
AtomMorphArea >> buildMorphs [

	| startX startY x y |
	self removeAllMorphs.

	startX := self bounds origin x.
	startY := self bounds origin y.
	x := startX.
	y := startY.
	[ x < (startX + 200) ] whileTrue: [ 
		[ y < (startY + 200) ] whileTrue: [ 
			| newMorph |
			newMorph := AtomMorph new.
			newMorph bounds: (x @ y extent: 50 @ 50).
			self addMorph: newMorph.
			y := y + 50 ].
		x := x + 50.
		y := 0 ].
	self layoutChanged
]
