actions - repositories list
createRepository
	^ GLMGenericAction new
		action: [ :presentation | self class createRepository];
		icon: GLMUIThemeExtraIcons glamorousAdd;
		shortcut: $c;
		title: 'Clone new repository'; showTitle