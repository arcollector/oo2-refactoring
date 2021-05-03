Class {
	#name : #Question,
	#superclass : #Post,
	#instVars : [
		'title',
		'answers',
		'topics'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Question class >> newWithTitle: title description: aDescription user: aUser [
	^ self new initializeWithTitle: title description:aDescription   user: aUser; 
		yourself
]

{ #category : #'instance creation' }
Question class >> newWithTitle: title description: aDescription user: aUser topic: aTopic [
	^ self new
		initializeWithTitle: title
			description: aDescription
			user: aUser;
			addTopic: aTopic;
			yourself.
		
]

{ #category : #adding }
Question >> addTopic: aTopic [
	topics add: aTopic.
	aTopic addQuestion: self.

]

{ #category : #'as yet unclassified' }
Question >> calculatePositiveVotes [
^self positiveVotes size
]

{ #category : #'initalize-release' }
Question >> initialize [
	answers := OrderedCollection new.
	topics := OrderedCollection new.
	votes := OrderedCollection new.
	timestamp := DateAndTime now.
]

{ #category : #'as yet unclassified' }
Question >> initializeWithTitle: aTitle description: aDescription user: aUser [
title:= aTitle.
description := aDescription .
user:= aUser.
]

{ #category : #accessing }
Question >> title [
	^title 
]

{ #category : #accessing }
Question >> topics [
	^topics 
]
