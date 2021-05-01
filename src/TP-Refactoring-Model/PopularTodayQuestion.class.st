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
PopularTodayQuestion >> calculateAverageVotes: size [ 
	^cuoora calculateTotalPositiveVotes / size.
]

{ #category : #retrieving }
PopularTodayQuestion >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance
]

{ #category : #retrieving }
PopularTodayQuestion >> filter: questions byPositiveVotes: aNumber [
^(questions select: [ :q | q positiveVotes size >= aNumber ])
	
]

{ #category : #retrieving }
PopularTodayQuestion >> retrieveQuestions: aUser [
	| latestQuestions sortedQuestions filteredQuestions averageVotes |
	averageVotes := self
		calculateAverageVotes: cuoora getTodayQuestions size. "esto va a CuOOra"
	filteredQuestions := self
		filter: cuoora getTodayQuestions
		byPositiveVotes: averageVotes.
	sortedQuestions := self
		sortQuestionsByPositiveVotes: filteredQuestions.
	latestQuestions := self getLatest: sortedQuestions.
	^ self removeQuestions: latestQuestions with: aUser
]
