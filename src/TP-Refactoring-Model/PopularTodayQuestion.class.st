Class {
	#name : #PopularTodayQuestion,
	#superclass : #QuestionRetriever,
	#instVars : [
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
PopularTodayQuestion class >> new: cuoora [
	^ self new cuoora: cuoora
]

{ #category : #retrieving }
PopularTodayQuestion >> calculateAverageVotes [
	^ cuoora calculateTotalPositiveVotes / cuoora getTodayQuestionsCount
]

{ #category : #retrieving }
PopularTodayQuestion >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance
]

{ #category : #'as yet unclassified' }
PopularTodayQuestion >> getQuestions: aUser [
	^ cuoora getTodayQuestions
		select: [ :q | q calculatePositiveVotes  >= self calculateAverageVotes ]
]
