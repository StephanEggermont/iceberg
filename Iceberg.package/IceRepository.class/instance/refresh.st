private
refresh
	branch ifNotNil: #refresh.
	upstream ifNotNil: #refresh.
	commitDictionary := Dictionary new.
	savedPackages := nil.