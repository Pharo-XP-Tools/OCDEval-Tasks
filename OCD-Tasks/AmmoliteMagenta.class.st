Class {
	#name : #AmmoliteMagenta,
	#superclass : #Object,
	#category : #'OCD-Tasks-Task1'
}

{ #category : #'as yet unclassified' }
AmmoliteMagenta class >> buildExample [

	|data promotion students|
	data := AmmoliteMagentaTaskConfiguration new taskData2.
	students := (data splitOn: Character cr) collect:[:studentDataString|
		AMStudent readFromDataString: studentDataString].
	promotion := AMPromotion new.
	promotion name: 'OCRE xp'.
	promotion students: students.
	^Array with: promotion
		
]

{ #category : #examples }
AmmoliteMagenta class >> run [

	<example>
	AMGroupBuilderPresenter openOn: { (AMPromotion new
			 name: 'OCRE';
			 students: (STON fromString:
						  (STON fromString:
								   AmmoliteMagentaTaskConfiguration new taskData) asString);
			 yourself) }
]
