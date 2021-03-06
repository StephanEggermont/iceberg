initialization
initializePresenter
	message acceptBlock: [ :text | 
		text ifNotEmpty: [ 
			UIManager default informUserDuring: [ :bar | 
				bar label: ('Commiting to {1}' format: {self repository printString}).
				self model commitWithMessage: text asString.
				pushCheckbox state ifTrue: [ self repository push ].
				]]].
	
	commitButton action: [ message accept ].
