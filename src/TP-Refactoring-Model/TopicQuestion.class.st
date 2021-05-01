Class {
	#name : #TopicQuestion,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
TopicQuestion >> retrieveQuestions: aUser [
	| sortedQuestions latestQuestions |
	sortedQuestions := self
		sortQuestionsByPositiveVotes: aUser getTopicQuestions.
	latestQuestions := self getLatest: sortedQuestions.
	^ self removeQuestions: latestQuestions with: aUser
]
