Class {
	#name : #SocialQuestion,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
SocialQuestion >> retrieveQuestions: aUser [
	| qRet temp followingCol |
	qRet := OrderedCollection new.
	followingCol := OrderedCollection new.
	aUser following
		do: [ :follow | followingCol addAll: follow questions ].
	temp := self sortQuestionsByPositiveVotes: followingCol .
	qRet := self getLatest: temp.
	^ self removeQuestions: qRet with: aUser. 
]
