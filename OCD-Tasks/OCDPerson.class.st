Class {
	#name : #OCDPerson,
	#superclass : #Object,
	#instVars : [
		'personName',
		'age'
	],
	#category : #'OCD-Tasks-Warmup'
}

{ #category : #'instance creation' }
OCDPerson class >> named: aString [

	^ self new
		  personName: aString;
		  yourself
]

{ #category : #accessing }
OCDPerson >> age [

	^ age
]

{ #category : #accessing }
OCDPerson >> age: anObject [

	age := anObject
]

{ #category : #accessing }
OCDPerson >> personName [

	^ personName
]

{ #category : #accessing }
OCDPerson >> personName: anObject [

	personName := anObject
]

{ #category : #printing }
OCDPerson >> printOn: aStream [

	aStream << ((self readSlotNamed: #personName) ifNil: [ 'Unnamed person' ])
]

{ #category : #hooks }
OCDPerson >> registerOn: aPersonRegistry [
	aPersonRegistry registerPerson: self
]
