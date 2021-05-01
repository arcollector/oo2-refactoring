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

{ #category : #retrieving }
PopularTodayQuestion >> getRelevantQuestions [
	^ cuoora getTodayQuestions
		select: [ :q | q calculatePositiveVotes  >= self calculateAverageVotes ]
]

{ #category : #retrieving }
PopularTodayQuestion >> retrieveQuestions: aUser [
	| latestQuestions sortedQuestions  |
	sortedQuestions := self
		sortQuestionsByPositiveVotes: self getRelevantQuestions.
	latestQuestions := self getLatest: sortedQuestions.
	^ self removeQuestions: latestQuestions with: aUser
]
