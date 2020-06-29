Class {
	#name : #OCDTaskInstaller,
	#superclass : #Object,
	#category : #'OCD-Tasks-Settings'
}

{ #category : #'as yet unclassified' }
OCDTaskInstaller class >> installAndConfigureImageForOCDTask1 [
	<script>
	
	Object subclass: #MetaLink
	uses: TObservable
	slots: { #arguments. #condition. #conditionArguments. #control => ObservableSlot. #level. #metaObject. #nodes. #selector. #options }
	classVariables: {  }
	package: 'Reflectivity-Core'.
	
	MetaLinkInstaller compile: 'registerAndInstallPermaLink: aPermaLink forTarget: aSlotOrVar
	| nodes |
	(linksRegistry canReinstallPermaLink: aPermaLink)
		ifFalse: [ ^ self ].
		
	linksRegistry registerPermaLink: aPermaLink.	
	
	nodes := MetalinkTargetResolver resolveASTLookupFor: aSlotOrVar option: aPermaLink persistenceType.
	aPermaLink link property: #control whenChangedDo: [aPermaLink link nodes add:nodes asArray first methodNode].
	aPermaLink targetObjectOrClass link: aPermaLink link toNodes: nodes.'.
	
	Object compile: 'link: aMetaLink toNodes: nodes
	aMetaLink control: #before.
	nodes do: [ :node | self link: aMetaLink toAST: node ]'.
	
	self removeClassTag: #'Task2'.
	TestColor removeFromSystem.	
	self removeTaskInstaller
]

{ #category : #'as yet unclassified' }
OCDTaskInstaller class >> installAndConfigureImageForOCDTask2a [ 
	<script>
	
	Color indexedColors at: 82 put: (Color r: 0.19941348973607037 g: 1.0 b: 0.0 alpha: 1.0).
	TestColor removeFromSystem.
	
	AtomManager compile: 'initialize 
	AtomApp announcer when: AtomActionRequest send: #requestColorChange: to: self.
	AtomApp announcer when: AtomActionRequest send: #requestSelection: to: self.
	AtomApp announcer when: AtomActionRequest send: #requestDeselection: to: self'.	
	
	AtomMorph compile: 'handleMouseMove: event
	"negated
		ifTrue: [ ^ self ].
	self isSelected
		ifTrue: [ ^ self ].
	self changeColor"'.
	AtomMorph compile: 'handlesMouseDown: event
	^ true'.	
	AtomApp reset.
	
	self removeClassTag: #'Task1'.	
	self removeTaskInstaller
]

{ #category : #'as yet unclassified' }
OCDTaskInstaller class >> installAndConfigureImageForOCDTask2b [ 
	<script>

	Color indexedColors at: 82 put: (TestColor r: 0.19941348973607037 g: 1.0 b: 0.0 alpha: 1.0).
	MetaLink package addClass: TestColor.
	
	AtomManager compile: 'initialize 
	AtomApp announcer when: AtomColorChangeRequest send: #requestColorChange: to: self.
	AtomApp announcer when: AtomSelectionRequest send: #requestSelection: to: self.
	AtomApp announcer when: AtomDeselectionRequest send: #requestDeselection: to: self'.
	
	AtomMorph compile: 'handleMouseMove: event
	negated
		ifTrue: [ ^ self ].
	self isSelected
		ifTrue: [ ^ self ].
	self changeColor'.
	
	AtomMorph compile: 'handlesMouseDown: event
	^ false'.	
	
	AtomApp reset.
	
	self removeClassTag: #'Task1'.	
	self removeTaskInstaller
]

{ #category : #'as yet unclassified' }
OCDTaskInstaller class >> removeClassTag: aSymbol [
	|tag|	
	tag := self package classTagNamed: aSymbol.
	tag classes do: #removeFromSystem.
	self package removeClassTag: aSymbol 
]

{ #category : #'as yet unclassified' }
OCDTaskInstaller class >> removeTaskInstaller [
	(self confirm: 'Remove installation class from system?') ifFalse:[^self].
	self removeFromSystem
	
]
