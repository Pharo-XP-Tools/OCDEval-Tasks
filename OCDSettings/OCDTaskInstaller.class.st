Class {
	#name : #OCDTaskInstaller,
	#superclass : #Object,
	#category : #OCDSettings
}

{ #category : #'as yet unclassified' }
OCDTaskInstaller class >> installAndConfigureImageForOCDTask2a [ 
	<script>
	
	Color indexedColors at: 82 put: (Color r: 0.19941348973607037 g: 1.0 b: 0.0 alpha: 1.0).
	
	AtomManager compile: 'initialize 
	AtomApp announcer when: AtomActionRequest send: #requestColorChange: to: self.
	AtomApp announcer when: AtomActionRequest send: #requestSelection: to: self.
	AtomApp announcer when: AtomActionRequest send: #requestDeselection: to: self'.	
	
	AtomApp reset.
	
	self removeTaskInstaller
]

{ #category : #'as yet unclassified' }
OCDTaskInstaller class >> installAndConfigureImageForOCDTask2b [ 
	<script>

	Color indexedColors at: 82 put: (TestColor r: 0.19941348973607037 g: 1.0 b: 0.0 alpha: 1.0).
	
	AtomManager compile: 'initialize 
	AtomApp announcer when: AtomColorChangeRequest send: #requestColorChange: to: self.
	AtomApp announcer when: AtomSelectionRequest send: #requestSelection: to: self.
	AtomApp announcer when: AtomDeselectionRequest send: #requestDeselection: to: self'.	
	
	AtomApp reset.
	
	self removeTaskInstaller
]

{ #category : #'as yet unclassified' }
OCDTaskInstaller class >> removeTaskInstaller [
	(self confirm: 'Remove installation class from system?') ifFalse:[^self].
	self removeFromSystem
]
