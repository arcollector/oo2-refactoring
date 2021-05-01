Class {
	#name : #TopicQuestion,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
TopicQuestion >> retrieveQuestions: aUser [
	| qRet temp topicsCol |
	qRet := OrderedCollection new.
	topicsCol := OrderedCollection new.
	aUser topics do: [ :topic | topicsCol addAll: topic questions ].
	temp := self sortQuestionsByPositiveVotes: topicsCol.
	qRet := self getLatest: temp.
	^ self removeQuestions: qRet with: aUser. 
]
