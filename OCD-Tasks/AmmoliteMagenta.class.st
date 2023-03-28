Class {
	#name : #AmmoliteMagenta,
	#superclass : #Object,
	#category : #'OCD-Tasks-Task1'
}

{ #category : #'as yet unclassified' }
AmmoliteMagenta class >> promotion [

	| promotion students|
	
	promotion := AMPromotion new.
	promotion name: 'OCRE xp'.
	
	students := (self students splitOn: Character cr) collect: [ :studentDataString | 
		AMStudent readFromString: studentDataString 
	].
	promotion students: students.
	
	^ Array with: promotion
		
]

{ #category : #examples }
AmmoliteMagenta class >> run [

	<script: 'self run'>
	AMGroupBuilderPresenter openOn: self promotion 
]

{ #category : #'as yet unclassified' }
AmmoliteMagenta class >> students [
	^'Nath -
Adèle +
William -
Marguerite 
Valérie 
Danielle 
Margot +
Diane 
Thibault -
Thomas +
Margaud -
Julie 
Charles-Thibault +
Alix +
Philippine 
Victoire -
Frédérique 
Adèle +
Constance +
Alex 
Isaac-Guillaume +
Élisabeth +
Guy -
Charles -
Raymond-Tristan 
Inès-Hélène 
Jean +
Alex +
Henri +
Jules -
Dorothée 
Alexandria 
Jacques
Adèle + 
Catherine'
]
