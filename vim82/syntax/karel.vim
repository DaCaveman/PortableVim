" Vim syntax file for the rapid programming language (version 0.1).
"
" Language: karel
" Maintainer: mo
" Last Change: 2012 April 12
" Version: 0.1
"

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Set the current syntax to be known as karel
let b:current_syntax = "karel"

" Section: Rapid is case-insensitive.
syntax case ignore


" Section: Comments
"
syntax match rapidComment /!.*$/
syntax match rapidStatement /CALL.*$/ 
"syntax match rapidKeyworddec /J P.*$/extend
"syntax match rapidKeyworddec /JP.*$/extend
"syntax match rapidKeyworddec /L P.*$/extend
"syntax match rapidKeyworddec /LP.*$/extend


" Section: Keywords
"
syntax keyword rapidKeyword JMP
"syntax keyword rapidKeyword endfunc endtrap
syntax keyword rapidProc array abort abort_task about abs acos act_screen add_dict along append_node append_queue approach array_len asin at atan2 attach att_window_d att_window_s away avl_pos_num axis aout ain boolean begin byte byname bytes_ahead bytes_left const continue cmos cancel continue common_assoc config call_prog call_proglin check_dict chr clear clear_sema close close_tpe clr_io_stat clr_port_sim clr_pos_reg cnc_dyn_disi cnc_dyn_disr cnc_dyn_diss cncl_stp_mtn cnv_conf_str cnv_int_str cnv_jpos_rel cnv_real_str cnv_rel_jpos cnv_str_conf cnv_str_int cnv_str_real cnv_str_time cnv_time_str common_assoc condition connect cont_task copy_file copy_queue copy_tpe cos cr create_tpe create_var curjpos curpos curr_prog delay disable disp_dat_t def_screen def_window delete_file delete_node delete_queue del_inst_tpe det_window disable disconnect disctrl_alph disctrl_form disctrl_list dismount_dev dout din end endselect eval enable endcondition err_data event exp endusing from file file_list force_spmenu format_dev frame get_attr_prg get_file_pos get_jpos_reg get_jpos_tpe get_port_asg get_port_atr get_port_cmt get_port_mod get_port_sim get_port_val get_pos_reg get_pos_tpe get_pos_typ get_queue get_reg get_time get_tsk_info get_var go group_assoc gout gin hold hand integer in index ini_dyn_disi ini_dyn_disr ini_dyn_diss init_queue in_range insert_node insert_queue inv io_mod_type io_status jointpos j_in_range kcl kcl_no_wait kcl_status long ln load load_status lock_group mirror modifiy_queue motion_ctl mount_dev move move_file nowait node near node_size nomessage of open open_tpe ord orient pause pulse path position path_len pause_task pend_sema pop_key_rd port_id pos pos_reg_type post_err post_sema print_file prog_list program purge purge_dev push_key_rd queue_type return routine repeat read read_dict resume real relative read_dict_v read_kb relax release remove_dict rename_file rename_var rename_vars round run_task string select stop short save select_tpe sema_count semaphore set_attr_prg set_cursor set_epos_reg set_epos_tpe set_file_atr set_file_pos set_int_reg set_jpos_reg set_jpos_tpe set_lang set_perch set_port_asg set_port_atrset_port_cmt set_port_mod set_port_val set_port_sim set_pos_reg set_pos_tpe set_real_reg set_time set_tsk_attr set_tsk_name set_var signal sin sqrt std_pth_node str_len structure sub_str set_port_cmt tpdisplay tpprompt tperror timer to tan time translate trunc until uninit unhold unpause unlock_group unpos using var via vector var_info var_list vol_space write when with write_dict write_dict_v xyzwpr xyzwprext
"syntax keyword rapidproc EIO_BUS EIO_UNIT_TYPE EIO_UNIT EIO_SIGNAL EIO_CROSS EIO_ACCESS SYSSIG_OUT SYSSIG_IN
"syntax keyword rapidKeyworddec local global pers var const
"syntax keyword rapidKeywordmov movej movel movec arcj arcl arcc arclstart arclend arcjstart arcjend spotj spotl gluel gluej gluec triggj triggl displ dispj dispc
"syntax keyword rapidFlow waitdi
"syntax match   rapidFlow /wait/
"syntax match   rapidKeyworddec /WOBj:=/


" Section: Statements
"
syntax keyword rapidStatement if while test for wait
syntax keyword rapidStatement else elseif then case go gi
syntax keyword rapidStatement endif endwhile endtest endfor
syntax keyword rapidFlow go gi do di


" Section: Operators
"
syntax keyword rapidOperator not and or xor



" Section: Types
"
"syntax keyword rapidType bool num robtarget jointtarget string

" Section: Strings
"
"syntax region rapidString start=/"/ end=/"/	contains=ALLBUT,rapidNumber


" Section: Boolean
"
syntax keyword rapidType ON OFF RESET START


" Section: Numbers
"
syn match  rapidASCIICode	"\%(\w\|[]})\"'/]\)\@<!\%(?\%(\\M-\\C-\|\\C-\\M-\|\\M-\\c\|\\c\\M-\|\\c\|\\C-\|\\M-\)\=\%(\\\o\{1,3}\|\\x\x\{1,2}\|\\\=\S\)\)" 	extend
syn match  rapidNumber	"\%(\%(\w\|[]})\"']\s*\)\@<!-\)\=\<0[xX]\x\+\%(_\x\+\)*\>"																			extend
syn match  rapidNumber	"\%(\%(\w\|[]})\"']\s*\)\@<!-\)\=\<\%(0[dD]\)\=\%(0\|[1-9]\d*\%(_\d\+\)*\)\>"														extend
syn match  rapidNumber	"\%(\%(\w\|[]})\"']\s*\)\@<!-\)\=\<0[oO]\=\o\+\%(_\o\+\)*\>"																		extend
syn match  rapidNumber	"\%(\%(\w\|[]})\"']\s*\)\@<!-\)\=\<0[bB][01]\+\%(_[01]\+\)*\>"																		extend
syn match  rapidFloat	"\%(\%(\w\|[]})\"']\s*\)\@<!-\)\=\<\%(0\|[1-9]\d*\%(_\d\+\)*\)\.\d\+\%(_\d\+\)*\>"													extend
syn match  rapidFloat	"\%(\%(\w\|[]})\"']\s*\)\@<!-\)\=\<\%(0\|[1-9]\d*\%(_\d\+\)*\)\%(\.\d\+\%(_\d\+\)*\)\=\%([eE][-+]\=\d\+\%(_\d\+\)*\)\>"				extend

"FOLDs festlegen

syn region rapidFold start="{" end="};" transparent fold
"syn region rapidFold start="/pos" end="};" transparent fold
"syn region rapidFold start=/SYSSIG_/ end=/#/ transparent fold



" Section: Default highlight
hi def link rapidComment	Comment
hi def link rapidString		String
hi def link rapidKeyword	Statement
hi def link rapidProc		Proc
hi def link rapidStatement	Statement
hi def link rapidOperator	Operator
hi def link rapidType		Type
hi def link rapidBoolean	Boolean
hi def link rapidNumber		Number
hi def link rapidFloat		Float
hi def link rubyASCIICode		Number
hi def link rapidKeyworddec		dec
hi def link rapidKeywordmov		mov
hi def link rapidFlow			Flow


" Section: sync
"
" We don't need to look backwards to highlight correctly;
" this speeds things up greatly.
syntax sync minlines=1 maxlines=1

finish
