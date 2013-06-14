let g:Powerline#Segments#svn#segments = Pl#Segment#Init(['svn',
	\ (exists('g:loaded_fugitive') && g:loaded_fugitive == 1),
	\ Pl#Segment#Create('branch', '%{Powerline#Functions#svn#GetBranch("$BRANCH")}')
  \ ])
