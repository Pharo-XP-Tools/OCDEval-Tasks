Class {
	#name : #AmmoliteMagenta,
	#superclass : #Object,
	#category : #'OCD-Tasks-Task3'
}

{ #category : #examples }
AmmoliteMagenta class >> run [
	<example>
	AMGroupBuilderPresenter openOn: {
		(STON fromString: 
			(STON fromString: AmmoliteMagentaTaskConfiguration new taskData) asString
		)
	}
]