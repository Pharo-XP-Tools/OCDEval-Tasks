Class {
	#name : #BaselineOfOCDEvalTasks,
	#superclass : #BaselineOf,
	#category : #BaselineOfOCDEvalTasks
}

{ #category : #baselines }
BaselineOfOCDEvalTasks >> baseline: spec [

	<baseline>
	spec for: #common do: [ "Packages"
		spec
			package: 'OCD-Tasks';
			package: 'OCD-Tasks-Tutorial'
			with: [ spec requires: #( 'OCD-Tasks' ) ] ]
]
