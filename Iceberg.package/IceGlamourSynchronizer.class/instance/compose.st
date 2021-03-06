building
compose
	(self custom: GLMStacker new) with: [ :browser |
		browser aPane: #commit.
		browser transmit 
			transformed: #workingCopyDiff; 
			to: #commit;
			andShow: [ :a | a 
				title: 'Commit your changes'; 
				custom: IceGlamourCommitBrowser new ].

		browser aPane: #update.
		browser transmit 
			to: #update;
			andShow: [ :a | a 
				title: 'Update'; 
				custom: IceGlamourUpdateBrowser new ].

		browser aPane: #publish.
		browser transmit 
			to: #publish;
			andShow: [ :a | a 
				title: 'Publish'; 
				custom: IceGlamourPublishBrowser new ].
	]
