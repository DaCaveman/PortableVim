Installation:
-------------

Extract the provided archive into your ~/.vim/ or ~/vimfiles/ directory
(depending on your System) keeping the folder structure. Overwrite krl.vim and
krl.txt files from older installation. I don't know how other methods might
work.

To fully use these scripts put >
    filetype plugin indent on
    syntax on
in your .vimrc

You may have to run >
    :helptags ~/.vim/doc/
or >
    :helptags ~/vimfiles/doc/
to use the help within Vim afterwards. >
    :help krl

Or just open the file .../doc/krl.txt

tl:dr
Q: I'm here to feed my kids, not to read. Do you have a quick suggestion on
    krl settings for my |.vimrc|?
A: Yes:
    let g:krlMoveAroundKeyMap=1 " [[, ]], [] and ][ jumps around functions
    let g:krlGoDefinitionKeyMap=1 " gd shows the declaration of curr. word
    let g:krlListDefKeyMap=1 " <leader>f shows all functions in curr. file
    let g:krlListUsageKeyMap=1 " <leader>u shows all appearance of curr. word
    let g:krlAutoFormKeyMap=1 " <leader>n inserts a body for a new def
    let g:krlShowError=1 " shows some syntax errors
    let g:krlRhsQuickfix=1 " open quickfix window on the right hand side
    " if you want all folds to close (case sensitiv)...
    let g:krlCloseFolds=1 " switch folding to all
    " or else if you don't like any closed folds use:
    " let g:krlCloseFolds=2 " switch folding off
    " if you use colorscheme tortus use:
    " let g:krlNoHighLink=1 " even more colors 


You do get:
    ~/.vim/doc/krl.txt
    ~/.vim/ftdetect/krl.vim
    ~/.vim/ftplugin/krl.vim
    ~/.vim/indent/krl.vim
    ~/.vim/syntax/krl.vim


Helptags:

krl	krl.txt	/*krl*
krl.txt	krl.txt	/*krl.txt*
<Plug>KrlAutoForm	krl.txt	/*<Plug>KrlAutoForm*
<Plug>KrlCloseAllFolds	krl.txt	/*<Plug>KrlCloseAllFolds*
<Plug>KrlCloseLessFolds	krl.txt	/*<Plug>KrlCloseLessFolds*
<Plug>KrlCloseNoFolds	krl.txt	/*<Plug>KrlCloseNoFolds*
<Plug>KrlGoDef	krl.txt	/*<Plug>KrlGoDef*
<Plug>KrlListDef	krl.txt	/*<Plug>KrlListDef*
<Plug>KrlListUse	krl.txt	/*<Plug>KrlListUse*
g:krlAutoComment	krl.txt	/*g:krlAutoComment*
g:krlAutoFormKeyMap	krl.txt	/*g:krlAutoFormKeyMap*
g:krlAutoFormUpperCase	krl.txt	/*g:krlAutoFormUpperCase*
g:krlCloseFolds	krl.txt	/*g:krlCloseFolds*
g:krlFoldKeyMap	krl.txt	/*g:krlFoldKeyMap*
g:krlFormatComments	krl.txt	/*g:krlFormatComments*
g:krlGoDefinitionKeyMap	krl.txt	/*g:krlGoDefinitionKeyMap*
g:krlLhsQuickfix	krl.txt	/*g:krlLhsQuickfix*
g:krlListDefKeyMap	krl.txt	/*g:krlListDefKeyMap*
g:krlListUsageKeyMap	krl.txt	/*g:krlListUsageKeyMap*
g:krlMoveAroundKeyMap	krl.txt	/*g:krlMoveAroundKeyMap*
g:krlNoHighLink	krl.txt	/*g:krlNoHighLink*
g:krlNoHighlight	krl.txt	/*g:krlNoHighlight*
g:krlNoIndent	krl.txt	/*g:krlNoIndent*
g:krlNoKeyWord	krl.txt	/*g:krlNoKeyWord*
g:krlNoPath	krl.txt	/*g:krlNoPath*
g:krlNoSpaceIndent	krl.txt	/*g:krlNoSpaceIndent*
g:krlNoVerbose	krl.txt	/*g:krlNoVerbose*
g:krlPathToBodyFiles	krl.txt	/*g:krlPathToBodyFiles*
g:krlRhsQuickfix	krl.txt	/*g:krlRhsQuickfix*
g:krlShowError	krl.txt	/*g:krlShowError*
krl-auto-form	krl.txt	/*krl-auto-form*
krl-folding	krl.txt	/*krl-folding*
krl-formatting-comments	krl.txt	/*krl-formatting-comments*
krl-highlight-bugs	krl.txt	/*krl-highlight-bugs*
krl-highlighting	krl.txt	/*krl-highlighting*
krl-indent	krl.txt	/*krl-indent*
krl-indent-bugs	krl.txt	/*krl-indent-bugs*
krl-index	krl.txt	/*krl-index*
krl-jump-quickly	krl.txt	/*krl-jump-quickly*
krl-keyword-chars	krl.txt	/*krl-keyword-chars*
krl-known-bugs	krl.txt	/*krl-known-bugs*
krl-matchit-support	krl.txt	/*krl-matchit-support*
krl-options	krl.txt	/*krl-options*
krl-tl:dr	krl.txt	/*krl-tl:dr*
krl-word	krl.txt	/*krl-word*
