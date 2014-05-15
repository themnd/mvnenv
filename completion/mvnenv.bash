#!/bin/bash

_mvnenv_complete()
{
  COMPREPLY=()
  local cur="${COMP_WORDS[COMP_CWORD]}"
  local prev="${COMP_WORDS[COMP_CWORD-1]}"
  if [ $COMP_CWORD -gt 1 ]; then
  	local CMD="${COMP_WORDS[1]}"
  else
  	local CMD="${COMP_WORDS[COMP_CWORD-1]}"
  fi
  local completions=$(mvnenv completions "$CMD" "$prev")
  COMPREPLY=( $(compgen -W "$completions" -- "$cur") )
}

complete -o nospace -F _mvnenv_complete mvnenv
