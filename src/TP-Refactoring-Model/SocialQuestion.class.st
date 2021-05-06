Class {
	#name : #SocialQuestion,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
SocialQuestion >> retrieveQuestions: aUser [
^self getQuestions: aUser getFollowingQuestions  with: aUser
]
