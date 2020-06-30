Class {
	#name : #MetalinkStrangeNodeTest,
	#superclass : #TestCase,
	#instVars : [
		'metalink',
		'nodes'
	],
	#category : #'OCD-Tasks-Task1'
}

{ #category : #running }
MetalinkStrangeNodeTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	super setUp.
	ReflectivityExamples2 new removeNewMethodWithInstVarAccess.
	metalink := MetaLink new.	
	nodes := metalink nodes

]

{ #category : #running }
MetalinkStrangeNodeTest >> tearDown [ 
	ReflectivityExamples2 new removeNewMethodWithInstVarAccess.
	metalink uninstall.
	nodes := nil.
	super tearDown

]

{ #category : #tests }
MetalinkStrangeNodeTest >> testCollectionContents [
	self assertEmpty: nodes.

	"We install the metalink on the #instVar instance variable of class ReflectivityExamples2.
	There are 4 accesses to that variable in that class."
	ReflectivityExamples2
		link: metalink
		toSlotNamed: #instVar
		option: #all.

	"There should be 4 nodes in the metalink nodes collection"
	self assert: nodes size equals: 4
]