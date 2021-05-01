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

{ #category : #retrieving }
NewsQuestion >> retrieveQuestions: aUser [
| todayQuestions latestQuestions |
	todayQuestions := self sortQuestionsByPositiveVotes: cuoora getTodayQuestions.
	latestQuestions := self getLatest: todayQuestions.
	^ self removeQuestions: latestQuestions with: aUser

]
