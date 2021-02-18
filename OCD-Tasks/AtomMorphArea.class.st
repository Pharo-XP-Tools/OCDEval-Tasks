Class {
	#name : #AtomMorphArea,
	#superclass : #AtomAbstractMorph,
	#category : #'OCD-Tasks-Task2'
}

{ #category : #building }
AtomMorphArea >> atomBuildBlock: aBlock [

	self atomConfigBlock: aBlock
]

{ #category : #building }
AtomMorphArea >> buildBlock: aBlock [

	self configBlock: aBlock
]

{ #category : #building }
AtomMorphArea >> buildMorphs [

	| x y startX startY |

	startX := self bounds origin x.
	startY := self bounds origin y.
	x := startX.
	y := startY.
	4 timesRepeat: [ 
		4 timesRepeat: [ 
			| newMorph |
			newMorph := AtomMorph new.
			newMorph bounds: (x @ y extent: 50 @ 50).
			self addMorph: newMorph.
			y := y + 50 ].
		x := x + 50.
		y := startY ].
	
	self submorphs do: self atomConfigBlock.
	self configBlock value.
	self layoutChanged
]

{ #category : #'menu actions' }
AtomMorphArea >> deselect [

	self isSelected: false.
	self submorphs do: [ :m | m color: (Color gray: m color luminance) ]
]

{ #category : #'menu actions' }
AtomMorphArea >> select [

	self isSelected: true.
	self submorphs do: self atomConfigBlock.
	self configBlock value
]
