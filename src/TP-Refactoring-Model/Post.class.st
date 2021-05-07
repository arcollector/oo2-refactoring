Class {
	#name : #Post,
	#superclass : #Object,
	#instVars : [
		'user',
		'description',
		'votes',
		'timestamp'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #adding }
Post >> addVote: aVote [
 votes add: aVote
]

{ #category : #accessing }
Post >> description [
	^ description
]

{ #category : #accessing }
Post >> initializeShared [
votes := OrderedCollection new.
	timestamp := DateAndTime now
]

{ #category : #'as yet unclassified' }
Post >> negativeVotes [
	^ votes reject: [ :vote | vote isLike ]
]

{ #category : #'as yet unclassified' }
Post >> positiveVotes [
^ votes select: [ :vote | vote isLike ]
]

{ #category : #accessing }
Post >> timestamp [
	^ timestamp
]

{ #category : #accessing }
Post >> user [
	^ user
]

{ #category : #accessing }
Post >> votes [
	^ votes
]
