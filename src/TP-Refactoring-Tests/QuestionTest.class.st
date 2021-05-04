Class {
	#name : #QuestionTest,
	#superclass : #TestCase,
	#instVars : [
		'question'
	],
	#category : #'TP-Refactoring-Tests'
}

{ #category : #setup }
QuestionTest >> setUp [
	question := Question  newWithTitle: 'Question  title' description: 'Question description' user: (User new) 

]

{ #category : #testing }
QuestionTest >> testNegativeVotes [		
	question addVote: (Vote newWithUser: (User new) dislikesPost: question).
	self assert: (question negativeVotes size) equals: 1.
	
	question addVote: (Vote newWithUser: (User new) dislikesPost: question).
	self assert: (question negativeVotes size) equals: 2.

]

{ #category : #testing }
QuestionTest >> testPositiveAndNegativeVotesInterference [
	question addVote: (Vote newWithUser: User new dislikesPost: question).
	self assert: question calculatePositiveVotes equals: 0.
	self assert: question negativeVotes size equals: 1.
	question addVote: (Vote newWithUser: User new likesPost: question).
	self assert: question calculatePositiveVotes equals: 1.
	self assert: question negativeVotes size equals: 1.
	self assert: question votes size equals: 2
]

{ #category : #testing }
QuestionTest >> testPositiveVotes [
	question addVote: (Vote newWithUser: User new likesPost: question).
	self assert: question calculatePositiveVotes  equals: 1.
	question addVote: (Vote newWithUser: User new likesPost: question).
	self assert: question calculatePositiveVotes  equals: 2
]

{ #category : #testing }
QuestionTest >> testVotesForNewQuestion [
	self assert: question negativeVotes size equals: 0.
	self assert: question calculatePositiveVotes equals: 0
]
