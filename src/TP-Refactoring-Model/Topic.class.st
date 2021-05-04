Class {
	#name : #Topic,
	#superclass : #Object,
	#instVars : [
		'name',
		'description',
		'questions'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'intance creation' }
Topic class >> newWithName: aName description: aDescription [
	^ self new
		initializeWithName: aName description: aDescription;
		yourself
]

{ #category : #accessing }
Topic >> addQuestion: aQuetion [
	questions add: aQuetion 
]

{ #category : #accessing }
Topic >> description [
	^ description
]

{ #category : #initialize }
Topic >> initialize [
	questions := OrderedCollection new.
]

{ #category : #accessing }
Topic >> initializeWithName: aName description: aDescription [
name:= aName.
description := aDescription .
	
]

{ #category : #accessing }
Topic >> name [
	^name
]

{ #category : #accessing }
Topic >> questions [
	^ questions
]
