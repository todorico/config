#!/bin/bash

# colors definition
WHITE='\[\033[1;37m\]'
LIGHTGRAY='\[\033[0;37m\]'
GRAY='\[\033[1;30m\]'
BLACK='\[\033[0;30m\]'
RED='\[\033[0;31m\]'
LIGHTRED='\[\033[1;31m\]'
GREEN='\[\033[0;32m\]'
LIGHTGREEN='\[\033[1;32m\]'
BROWN='\[\033[0;33m\]' #Orange
YELLOW='\[\033[1;33m\]'
BLUE='\[\033[0;34m\]'
LIGHTBLUE='\[\033[1;34m\]'
PURPLE='\[\033[0;35m\]'
PINK='\[\033[1;35m\]' #Light Purple
CYAN='\[\033[0;36m\]'
LIGHTCYAN='\[\033[1;36m\]'
DEFAULT='\[\033[0m\]'

# prompt customisation 
bash_prompt(){

	CHECK_JOB=$(if [ $(jobs -r | wc -l) -gt 0 ] ; then echo "[$YELLOW&:\j$LIGHTGREEN]-" ; fi)
	
	PS1="$LIGHTGREEN┌[$LIGHTGREEN\u@\h$LIGHTGREEN]-$CHECK_JOB[$WHITE\W$LIGHTGREEN]\n$LIGHTGREEN└─▶ $DEFAULT"
}

PROMPT_COMMAND='bash_prompt'
