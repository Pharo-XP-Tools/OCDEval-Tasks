Class {
	#name : #OCDTaskInstaller,
	#superclass : #Object,
	#category : #OCDSettings
}

{ #category : #'as yet unclassified' }
OCDTaskInstaller class >> installAndConfigureImageForOCDTask2 [ 
	<script>
	"
	- install tools (ifn)
	- configure task applications (ifn)"
	Color indexedColors at: 82 put: (TestColor r: 0.19941348973607037 g: 1.0 b: 0.0 alpha: 1.0).
	AtomApp reset
]
