actions
load
	self repository loadedPackages 
		collect: [ :package | self versionFor: package ]
		thenDo: [:version | 
			version load.
			self repository announcer announce: IcePackageLoaded new.
		]
