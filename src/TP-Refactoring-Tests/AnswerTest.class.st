Class {
	#name : #AnswerTest,
	#superclass : #TestCase,
	#instVars : [
		'answer'
	],
	#category : #'TP-Refactoring-Tests'
}

{ #category : #setup }
AnswerTest >> setUp [
	answer := Answer newWithDescription:'An answer'  user:(User new)  question:(Question new).
]

{ #category : #testing }
AnswerTest >> testNegativeVotes [		
	answer addVote: (Vote newWithUser: (User new) dislikesPost: answer).
	self assert: (answer negativeVotes size) equals: 1.
	
	answer addVote: (Vote newWithUser: (User new) dislikesPost: answer).
	self assert: (answer negativeVotes size) equals: 2.

]

{ #category : #testing }
AnswerTest >> testPositiveAndNegativeVotesInterference [
	
	answer addVote: (Vote newWithUser: (User new) dislikesPost: answer).
	self assert: (answer positiveVotes size) equals: 0.
	
	answer addVote: (Vote newWithUser: (User new) likesPost: answer).	
	self assert: (answer positiveVotes size) equals: 1.
	
	answer addVote: (Vote newWithUser: (User new) likesPost: answer).	
	self assert: (answer positiveVotes size) equals: 2.
	
	answer addVote: (Vote newWithUser: (User new) dislikesPost: answer).
	self assert: (answer positiveVotes size) equals: 2.
	
	self assert: answer votes size equals: 4.
]

{ #category : #testing }
AnswerTest >> testPositiveVotes [
	answer addVote: (Vote newWithUser: (User new) likesPost: answer).	
	self assert: (answer positiveVotes size) equals: 1.
	
	answer addVote: (Vote newWithUser: (User new) likesPost: answer).	
	self assert: (answer positiveVotes size) equals: 2.
	
]

{ #category : #testing }
AnswerTest >> testVotesForNewAnswer [
	self assert: (answer negativeVotes size) equals: 0.
	self assert: (answer positiveVotes size) equals: 0.
		
]
