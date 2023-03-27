Class {
	#name : #AmmoliteMagenta,
	#superclass : #Object,
	#category : #'OCD-Tasks-Task1'
}

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
