" g:rplugin.home should be the directory where the plugin files are.
" For users installing the plugin from the Vimball it will be at
" either ~/.vim or ~/vimfiles.
let g:rplugin.home = expand("<sfile>:h:h")

" g:rplugin.uservimfiles must be a writable directory. It will be g:rplugin.home
" unless it's not writable. Then it wil be ~/.vim or ~/vimfiles.
if filewritable(g:rplugin.home) == 2
    let g:rplugin.uservimfiles = g:rplugin.home
else
    let g:rplugin.uservimfiles = split(&runtimepath, ",")[0]
endif

" From changelog.vim, with bug fixed by "Si" ("i5ivem")
" Windows logins can include domain, e.g: 'DOMAIN\Username', need to remove
" the backslash from this as otherwise cause file path problems.
if executable("whoami")
    let g:rplugin.userlogin = system('whoami')
elseif $USERNAME != ""
    let g:rplugin.userlogin = $USERNAME
elseif $USER != ""
    let g:rplugin.userlogin = $USER
else
    call RWarningMsg("Could not determine user name.")
    let g:rplugin.failed = 1
    finish
endif
let g:rplugin.userlogin = substitute(substitute(g:rplugin.userlogin, '.*\\', '', ''), '\W', '', 'g')
if g:rplugin.userlogin == ""
    call RWarningMsg("Could not determine user name.")
    let g:rplugin.failed = 1
    finish
endif

if has("win32")
    let g:rplugin.home = substitute(g:rplugin.home, "\\", "/", "g")
    let g:rplugin.uservimfiles = substitute(g:rplugin.uservimfiles, "\\", "/", "g")
endif

if exists("g:R_compldir")
    let g:rplugin.compldir = expand(g:R_compldir)
elseif has("win32") && $APPDATA != "" && isdirectory($APPDATA)
    let g:rplugin.compldir = $APPDATA . "\\Nvim-R"
elseif $XDG_CACHE_HOME != "" && isdirectory($XDG_CACHE_HOME)
    let g:rplugin.compldir = $XDG_CACHE_HOME . "/Nvim-R"
elseif isdirectory(expand("~/.cache"))
    let g:rplugin.compldir = expand("~/.cache/Nvim-R")
elseif isdirectory(expand("~/Library/Caches"))
    let g:rplugin.compldir = expand("~/Library/Caches/Nvim-R")
else
    let g:rplugin.compldir = g:rplugin.uservimfiles . "/R/objlist/"
endif

" For compatibility with ncm-R:
let g:rplugin_compldir = g:rplugin.compldir

" Create the directory if it doesn't exist yet
if !isdirectory(g:rplugin.compldir)
    call mkdir(g:rplugin.compldir, "p")
endif

" Create or update the README (omnils_ files will be regenerated if older than
" the README).
let s:need_readme = 0
if !filereadable(g:rplugin.compldir . "/README")
    let s:need_readme = 1
else
    if readfile(g:rplugin.compldir . "/README")[0] != 'Last change in this file: 2021-04-22'
        let s:need_readme = 1
    endif
endif
if s:need_readme
    call delete(g:rplugin.compldir . "/nvimcom_info")
    call delete(g:rplugin.compldir . "/pack_descriptions")
    let s:flist = split(glob(g:rplugin.compldir . '/fun_*'), "\n")
    let s:flist += split(glob(g:rplugin.compldir . '/omnils_*'), "\n")
    if len(s:flist)
        for s:f in s:flist
            call delete(s:f)
        endfor
        unlet s:f
    endif
    unlet s:flist
    let s:readme = ['Last change in this file: 2021-04-22',
                \ 'The files in this directory were generated by Nvim-R automatically:',
                \ 'The omnils_ and fun_ files are used for omni completion and syntax highlight.',
                \ 'If you delete them, they will be regenerated.',
                \ '',
                \ 'When you load a new version of a library, their files are replaced.',
                \ '',
                \ 'Files corresponding to uninstalled libraries are not automatically deleted.',
                \ 'You should manually delete them if you want to save disc space.',
                \ '',
                \ 'If you delete this README file, all omnils_ and fun_ files will be regenerated.',
                \ '',
                \ 'All lines in the omnils_ files have 7 fields with information on the object',
                \ 'separated by the byte \006:',
                \ '',
                \ '  1. Name.',
                \ '',
                \ '  2. Single character representing the Type (look at the function',
                \ '     nvimcom_glbnv_line at R/nvimcom/src/nvimcom.c to know the meaning of the',
                \ '     characters).',
                \ '',
                \ '  3. Class.',
                \ '',
                \ '  4. Either package or environment of the object.',
                \ '',
                \ '  5. If the object is a function, the list of arguments using Vim syntax for',
                \ '     lists (which is the same as Python syntax).',
                \ '',
                \ '  6. Short description.',
                \ '',
                \ '  7. Long description.',
                \ '',
                \ 'Notes:',
                \ '',
                \ '  - There is a final \006 at the end of the line.',
                \ '',
                \ '  - All single quotes are replaced with the byte \004.',
                \ '',
                \ '  - Line breaks are indicated by \002.']

    call writefile(s:readme, g:rplugin.compldir . "/README")
    " Useful to force update of omnils_ files after a change in its format.
    unlet s:readme
endif
unlet s:need_readme

let $NVIMR_COMPLDIR = g:rplugin.compldir

