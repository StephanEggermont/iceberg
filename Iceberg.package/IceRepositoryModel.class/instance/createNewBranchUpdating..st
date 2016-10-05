actions
createNewBranchUpdating: presentation
	| selection |
	selection := self uiManager
		request: 'Please provide the name of the new branch to be created'
		initialAnswer: ''
		title: 'Create new branch'.

	selection ifNotNil: [ selection 
		ifEmpty: [ self uiManager abort: 'Branch name can not be empty.' title: 'Create new branch'. ]
		ifNotEmpty: [ 
			self repository createBranch: selection.
			presentation pane browser update ]]