Class {
	#name : #OCDPerson,
	#superclass : #Object,
	#instVars : [
		'name',
		'age'
	],
	#category : #'OCD-Tasks-Warmup'
}

{ #category : #'instance creation' }
OCDPerson class >> named: aString [

	^ self new
		  name: aString;
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
OCDPerson >> name [

	^ name
]

{ #category : #accessing }
OCDPerson >> name: anObject [

	name := anObject
]

{ #category : #printing }
OCDPerson >> printOn: aStream [
	aStream << self name
]

{ #category : #hooks }
OCDPerson >> registerOn: aPersonRegistry [
	aPersonRegistry registerPerson: self
]
