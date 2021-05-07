Class {
	#name : #SocialQuestion,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
SocialQuestion >> getQuestions: aUser [
	^ aUser getFollowingQuestions.
]
