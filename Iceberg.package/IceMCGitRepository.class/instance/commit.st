actions
commit
	self command: {
		'push'.
		self upstream isNil ifTrue: [{
			'--set-upstream'.
			'origin'.
			self branch
		}]
	}.
