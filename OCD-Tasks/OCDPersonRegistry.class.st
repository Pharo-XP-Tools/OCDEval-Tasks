Class {
	#name : #OCDPersonRegistry,
	#superclass : #Object,
	#instVars : [
		'persons'
	],
	#category : #'OCD-Tasks-Warmup'
}

{ #category : #accessing }
OCDPersonRegistry >> allPersons [
	^self persons values
]

{ #category : #accessing }
OCDPersonRegistry >> persons [

	^ persons ifNil: [ persons := Dictionary new ]
]

{ #category : #accessing }
OCDPersonRegistry >> persons: anObject [

	persons := anObject
]

{ #category : #visiting }
OCDPersonRegistry >> registerPerson: aPerson [
	self persons at: aPerson name ifAbsentPut: [ aPerson ].
	aPerson age: aPerson name size * 3
]
