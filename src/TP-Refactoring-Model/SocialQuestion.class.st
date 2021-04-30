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
	temp := followingCol
		asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ].
	qRet := temp last: (100 min: temp size).
	^ qRet reject: [ :q | q user = aUser ]
]
