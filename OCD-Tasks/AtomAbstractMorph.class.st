Class {
	#name : #AtomAbstractMorph,
	#superclass : #Morph,
	#category : #'OCD-Tasks-Task2'
}

{ #category : #'reflective operations' }
AtomAbstractMorph >> doesNotUnderstand: aMessage [

	aMessage arguments size = 0 ifTrue: [ 
		^ self lookupProperty: aMessage selector ].
	aMessage arguments size = 1 ifTrue: [ 
		^ self
			  setProperty: aMessage selector allButLast asSymbol
			  toValue: (aMessage arguments at: 1) ].
	^ super doesNotUnderstand: aMessage
]

{ #category : #initialization }
AtomAbstractMorph >> initialize [
	super initialize.
	self assureExtension assureOtherProperties
]

{ #category : #'reflective operations' }
AtomAbstractMorph >> lookupProperty: aSelector [

	^ self
		  valueOfProperty: aSelector
		  ifAbsent: [ ^ owner ifNotNil: [ owner lookupProperty: aSelector ] ]
]
