Class {
	#name : #Vote,
	#superclass : #Object,
	#instVars : [
		'isLike',
		'timstamp',
		'publication',
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
	timstamp := DateAndTime now.
	
]

{ #category : #private }
Vote >> initializeWithUser: aUser post: aPost [
	user := aUser.
	publication := aPost
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
Vote >> publication [
	^ publication
]

{ #category : #private }
Vote >> publication: anObject [
	publication := anObject
]

{ #category : #accessing }
Vote >> user [
	^ user
]

{ #category : #private }
Vote >> user: anObject [
	user := anObject
]
