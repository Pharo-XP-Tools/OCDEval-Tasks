Extension { #name : #AMStudent }

{ #category : #'*OCD-Tasks' }
AMStudent class >> readFromDataString: aString [

	| student readStream |
	student := self new.
	readStream := aString readStream.
	student name: (readStream upTo: Character space).
	student marker: readStream upToEnd.
	^ student
]
