Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
QuestionRetriever class >> new: cuoora and: aSymbol [
	^ self new cuoora: cuoora; option:aSymbol; yourself.
]

{ #category : #retrieving }
QuestionRetriever >> getLatest: questions [ 
^questions last: (100 min: questions  size).
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
		asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ] "estos size mandarlos a question"
]
