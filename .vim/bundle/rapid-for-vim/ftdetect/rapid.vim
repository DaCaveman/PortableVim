" ABB Rapid Command file type detection for Vim
" Language: ABB Rapid Command
<<<<<<< HEAD
" Maintainer: Patrick Meiser-Knosowski <knosowski@graeff.de>
" Version: 2.0.0
" Last Change: 11. Apr 2019
=======
" Maintainer: Patrick Meiser-Knosowski <knosowski@graeffrobotics.de>
" Version: 3.0.0
" Last Change: 16. Apr 2022
>>>>>>> e57b1e0a24656be48458f77fa4d06681c424b3d5
" Credits:
"

let s:keepcpo = &cpo
set cpo&vim

<<<<<<< HEAD
au! filetypedetect BufNewFile,BufRead *.mod,*.Mod,*.MOD,*.prg,*.Prg,*.PRG setf rapid
" change default autocmd for .sys 
au! filetypedetect BufNewFile,BufRead *.sys,*.Sys,*.SYS if getline(nextnonblank(1)) =~ '\v\c^\s*(\%\%\%|module\s)' | setf rapid | else | setf dosbatch | endif
" change default autocmd for cfg
au! filetypedetect BufNewFile,BufRead *.cfg,*.Cfg,*.CFG if getline(1) =~ '^\w\+:CFG' | setf rapid | endif

" correct line endings. in ftdetect because it gets loaded befor a file
" is loaded
augroup rapidftdetect
  au! filetypedetect BufRead *.cfg,*.Cfg,*.CFG if getline(1) =~ '^\w\+:CFG' | call <SID>RapidAutoCorrCfgLineEnding() | endif
augroup END
if !exists("*<SID>RapidAutoCorrCfgLineEnding()")
  function <SID>RapidAutoCorrCfgLineEnding()
=======
" Change default autocmd
" Make sure to catch both *.ext and *.ext\c...
" No augroup! see :h ftdetect
au! BufNewFile *.prg,*.Prg,*.PRG,*.prg\c
      \  setf rapid
au! BufRead *.prg,*.Prg,*.PRG,*.prg\c
      \  if s:IsRapid()
      \|   setf rapid
      \| elseif exists("g:filetype_prg")
      \|   exe "setf " . g:filetype_prg
      \| else
      \|   setf clipper
      \| endif
au! BufNewFile *.mod,*.Mod,*.MOD,*.mod\c
      \  setf rapid
au! BufRead *.mod,*.Mod,*.MOD,*.mod\c
      \  if s:IsRapid()
      \|   setf rapid
      \| elseif exists("g:filetype_mod")
      \|   exe "setf " . g:filetype_mod
      \| elseif s:IsLProlog()
      \|   setf lprolog
      \| elseif getline(nextnonblank(1)) =~ '\%(\<MODULE\s\+\w\+\s*;\|^\s*(\*\)'
      \|   setf modula2
      \| elseif expand("<afile>") =~ '\<go.mod$'
      \|   setf gomod
      \| else
      \|   setf modsim3
      \| endif
au! BufNewFile *.sys,*.Sys,*.SYS,*.sys\c
      \  setf rapid 
au! BufRead *.sys,*.Sys,*.SYS,*.sys\c
      \  if s:IsRapid()
      \|   setf rapid 
      \| elseif exists("g:filetype_sys")
      \|   exe "setf " . g:filetype_sys
      \| else 
      \|   setf dosbatch 
      \| endif
au! BufNewFile *.cfg,*.Cfg,*.CFG,*.cfg\c
      \  setf rapid
au! BufRead *.cfg,*.Cfg,*.CFG,*.cfg\c
      \  if s:IsRapid("cfg")
      \|   call <SID>RapidSetFandCorrEOL() 
      \| elseif exists("g:filetype_cfg")
      \|   exe "setf " . g:filetype_cfg
      \| else 
      \|   setf cfg 
      \| endif

if !exists("*<SID>RapidSetFandCorrEOL()")

  function <SID>RapidSetFandCorrEOL() abort
>>>>>>> e57b1e0a24656be48458f77fa4d06681c424b3d5
    setf rapid
    if get(g:,'rapidAutoCorrCfgLineEnd',1)
      silent! %s/\r//
      normal ``
    endif
  endfunction

  " Returns true if file content looks like RAPID
  function s:IsRapid(sChkExt = "") abort
    if a:sChkExt == "cfg"
      return getline(1) =~? '\v^%(EIO|MMC|MOC|PROC|SIO|SYS):CFG'
    endif
    " called from FTmod, FTprg or FTsys
    return getline(nextnonblank(1)) =~? '\v^\s*%(\%{3}|module\s+\k+\s*%(\(|$))'
  endfunction

  " Returns true if file content looks like LambdaProlog
  function s:IsLProlog() abort
    " skip apparent comments and blank lines, what looks like 
    " LambdaProlog comment may be RAPID header
    let l = nextnonblank(1)
    while l > 0 && l < line('$') && getline(l) =~ '^\s*%' " LambdaProlog comment
      let l = nextnonblank(l + 1)
    endwhile
    " this pattern must not catch a go.mod file
    return getline(l) =~ '\<module\s\+\w\+\s*\.\s*\(%\|$\)'
  endfunction

endif

let &cpo = s:keepcpo
unlet s:keepcpo

" vim:sw=2 sts=2 et
