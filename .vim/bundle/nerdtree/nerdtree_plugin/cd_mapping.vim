call NERDTreeAddKeyMap({
            \ 'key':           'o',
            \ 'callback':      'NERDTreeEnterDirectoryAndCD',
            \ 'quickhelpText': 'Enter directory and cd into it' })

function! NERDTreeEnterDirectoryAndCD()
  let node = g:NERDTreeDirNode.GetSelected()

  exec 'cd ' . node.path.str({'format': 'Cd'})
  NERDTreeCWD
endfunction
