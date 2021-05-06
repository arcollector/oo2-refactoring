Class {
	#name : #TopicQuestion,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
TopicQuestion >> retrieveQuestions: aUser [
	^ self getQuestions: aUser getTopicQuestions with: aUser
]
