Class {
	#name : #Answer,
	#superclass : #Post,
	#instVars : [
		'question'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Answer class >> newWithDescription: aString user: aUser question: aQuestion [
	^self new initializeWithDescription: aString user:aUser question: aQuestion; yourself 	
]

{ #category : #initialize }
Answer >> initialize [
	self initializeShared 
]

{ #category : #accessing }
Answer >> initializeWithDescription: aString user: aUser question: aQuestion [
	description := aString.
	user := aUser.
	question := aQuestion.
]
