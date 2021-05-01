Class {
	#name : #SocialQuestion,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
SocialQuestion >> retrieveQuestions: aUser [
	| latestQuestions sortedQuestions  |
	sortedQuestions := self sortQuestionsByPositiveVotes: aUser getFollowingQuestions.
	latestQuestions := self getLatest: sortedQuestions.
	^ self removeQuestions: latestQuestions with: aUser
]
