actions
pushAction
	^ GLMGenericAction new
		action: [ :presentation :repo | 
			presentation selection push.
			presentation pane browser update
		]; 
		icon: GLMUIThemeExtraIcons glamorousRightSide;
		shortcut: $p; 
		title: 'Push outgoing commits'; 
		condition: [ :presentation | 
			presentation selection notNil 
				and: [ presentation selection outgoingCommits notEmpty 
				and: [ presentation selection incommingCommits isEmpty ]]];
		yourself

