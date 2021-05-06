Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
QuestionRetriever >> getLatest: questions [
	^ questions last: (100 min: questions size)"reinventa la rueda"
]

{ #category : #retrieving }
QuestionRetriever >> getQuestions: questions with:aUser [ 
|todayQuestions latestQuestions |
todayQuestions := self
		sortQuestionsByPositiveVotes: questions.
	latestQuestions := self getLatest: todayQuestions.
	^ self removeQuestions: latestQuestions with: aUser
]

{ #category : #retrieving }
QuestionRetriever >> removeQuestions: questions with: user [
	^questions reject: [ :q | q user = user ]
]

{ #category : #retrieving }
QuestionRetriever >> retrieveQuestions: aUser [
	^self subclassResponsibility .
]

{ #category : #retrieving }
QuestionRetriever >> sortQuestionsByPositiveVotes: questions [
	^ questions
		asSortedCollection: [ :a :b | a calculatePositiveVotes  > b calculatePositiveVotes  ]
]
