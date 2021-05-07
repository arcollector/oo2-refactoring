Class {
	#name : #TopicQuestion,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
TopicQuestion >> getQuestions: aUser [
	^ aUser getTopicQuestions .
]
