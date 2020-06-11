" Vim syntax file
" Language:	KRL
" Maintainer:	Stefan Schmalzhaf
" Last Change:	26.04.2010

:syn case ignore
" A bunch of useful KRL keywords



syn keyword krlStatement        ABORT ABOUT ACTIVATE ACTIVATES
syn keyword krlStatement	ADVANCE AFTER ALARM ALL
syn keyword krlStatement	ALONG AND ANY ANYERROR
syn keyword krlStatement	ARM ASSERT AT
syn keyword krlStatement        ATTACH AWAY BEFORE BEGIN
syn keyword krlStatement        BREAK BY BYPASS
syn keyword krlStatement        CALL CALLS CANCEL CASE
syn keyword krlStatement        CATCH CLASS CLOSE CONDITION
syn keyword krlStatement        CONNECT CONTINUE CURRENT
syn keyword krlStatement        CYCLE CYCLES DEACTIVATE DEACTIVATES
syn keyword krlStatement        DECODE DELAY DETACH DISABLE
syn keyword krlStatement        DISTANCE DIV DO DOWNTO
syn keyword krlStatement        DV_CNTRL ELSE ENABLE ENCODE
syn keyword krlStatement        END ENDCONDITION ENDFOR ENDIF
syn keyword krlStatement        ENDMOVE ENDNODEDEF ENDOPEN ENDRECORD
syn keyword krlStatement        ENDSELECT ENDTRY ENDWHILE ERRORCLASS
syn keyword krlStatement        ERRORNUM EVENT EXECS EXIT
syn keyword krlStatement        FILE FINAL FOR
syn keyword krlStatement        FROM GOTO GOTOS HAND
syn keyword krlStatement        HOLD IF IMPORT IN
syn keyword krlStatement        INTERRUPT LOCK
syn keyword krlStatement        LONGJUMP MC MJ ML
syn keyword krlStatement        MOD MOVE MOVEFLY MV
syn keyword krlStatement        NEAR NL NODATA NODEDEF
syn keyword krlStatement        NODISABLE NOHOLD NOSAVE NOT
syn keyword krlStatement        NOTEACH OF OPEN OR
syn keyword krlStatement        PATH PAUSE PAUSES PERCENT
syn keyword krlStatement        PLC POWERUP PRIORITY
syn keyword krlStatement        PROG_ARM PULSE PURGE
syn keyword krlStatement        RAISE READ RECORD
syn keyword krlStatement        RELATIVE RELAX REPEAT RESUME
syn keyword krlStatement        RETRY RETURN ROL ROR
syn keyword krlStatement        SCAN SEGMENT SELECT
syn keyword krlStatement        SEMAPHORE SETJUMP SHL SHR
syn keyword krlStatement        SIGNAL SKIP STACK START
syn keyword krlStatement        STEP STOP SYNCMOVE
syn keyword krlStatement        SYNCMOVEFLY THEN TIL TIME
syn keyword krlStatement        TO TRY TYPE UAL
syn keyword krlStatement        UNLOCK UNPAUSE UNPAUSES UNTIL
syn keyword krlStatement        VECTOR VIA VOID
syn keyword krlStatement        WAIT WHEN WHILE WINDOW
syn keyword krlStatement        WRITE XOR XTNDPOS YELD

syn keyword krlFunction	        ABS ARRAY JOINTPOS 
syn keyword krlFunction	        COS INTEGER BOOLEAN POSITION 
syn keyword krlFunction	        SIN WITH STRING 
syn keyword krlFunction	        TAN REAL 
syn keyword krlFunction	        PTP CIRC LIN
syn keyword krlFunction	        PTP_REL LIN_REL CIRC_REL
syn keyword krlFunction         PULSE TRIGGER PRIO WHEN DISTANCE PATH DELAY

setlocal iskeyword+=$
syn keyword krlSpecial	        $TIMER $TIMER_STOP $TIMER_FLAG $OUT $IN $ANOUT $ANIN
syn keyword krlSpecial          $WORLD $ROBROOT $TOOL $BASE $IPO_MODE
syn keyword krlStructure        EXPORTED $VEL_AXIS $ACC_AXIS PROGRAM VAR CONST ROUTINE 
syn keyword krlSpecial          $VEL.CP $VEL.ORI1 $VEL.ORI2 $ACC.CP $ACC.ORI1 $ACC.ORI2 CA
syn keyword krlSpecial          $APO.CPTP  C_PTP $APO.CDIS C_DIS $APO.CORI C_ORI $APO.CVEL C_VEL
syn keyword krlSpecial          $ORI_TYPE $CIRC_TYPE
syn keyword krlSpecial          $ADVANCE $MODE_OP $EXT_START
syn keyword krlSpecial          $T1 $T2 $AUT $EXT
syn keyword krlSpecial          $IN_HOME $IN_HOME1 $IN_HOME2 $IN_HOME3 $IN_HOME4 $IN_HOME5

"integer number, or floating point number without a dot.
syn match  krlNumber		"\<\d\+\>"
"floating point number, with dot
syn match  krlFloat		"\<\d\+\.\d*\>"
"floating point number, starting with a dot
syn match  krlFloat		"\.\d\+\>"

syn keyword krlBoolean     TRUE FALSE ON OFF

syn keyword krlType        INT BOOL CHAR
syn keyword krlStructure   STRUC ENUM AXIS E6AXIS FRAME POS E6POS





syn region  krltodo start=";IBN" end="$"

syn match   krlOperator   "-\|=\|[:<>+\*^/\\]"
syn keyword krlOperator   AND OR EXOR NOT B_NOT B_AND B_OR B_EXOR

syn region  basicComment	start="--" end="$"
hi def link basicComment	Comment
hi def link krlStatement        Statement
hi def link krlFunction         Function
hi def link krlSpecial          Special
hi def link krlNumber           Number
hi def link krlFloat            Float
hi def link krlBoolean          Boolean
hi def link krlType             Type
hi def link krlStructure        Structure
hi def link krlComment          Comment
hi def link krltodo             Todo
hi def link krlOperator         Operator

let b:current_syntax = "KRL"

" vim: ts=8
