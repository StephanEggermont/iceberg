actions
switchBranch
	^ [ :presentation | 
		self class switchBranchOf: presentation selection.
		presentation pane browser update. 
	]