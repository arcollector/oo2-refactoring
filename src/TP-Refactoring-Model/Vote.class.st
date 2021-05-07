Class {
	#name : #Vote,
	#superclass : #Object,
	#instVars : [
		'isLike',
		'timestamp',
		'post',
		'user'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Vote class >> newWithUser: aUser dislikesPost: aPost [
	^ self new
		initializeWithUser: aUser post: aPost;
		dislike;
		yourself
]

{ #category : #'instance creation' }
Vote class >> newWithUser: aUser likesPost: aPost [
	^ self new
		initializeWithUser: aUser post: aPost;
		yourself
]

{ #category : #private }
Vote >> dislike [
	isLike := false.
]

{ #category : #initialize }
Vote >> initialize [
	isLike := true.
	timestamp := DateAndTime now
]

{ #category : #private }
Vote >> initializeWithUser: aUser post: aPost [
	user := aUser.
	post := aPost
]

{ #category : #accessing }
Vote >> isLike [
	^ isLike
]

{ #category : #private }
Vote >> like [
	isLike := true.
]

{ #category : #accessing }
Vote >> post [
	^ post
]

{ #category : #accessing }
Vote >> user [
	^ user
]
