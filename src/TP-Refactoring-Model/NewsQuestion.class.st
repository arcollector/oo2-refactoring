Class {
	#name : #NewsQuestion,
	#superclass : #QuestionRetriever,
	#instVars : [
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
NewsQuestion class >> new: cuoora [
	^ self new cuoora: cuoora
]

{ #category : #retrieving }
NewsQuestion >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance
]

{ #category : #'as yet unclassified' }
NewsQuestion >> getQuestions: aUser [
	^ cuoora getTodayQuestions
]
