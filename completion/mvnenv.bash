#!/bin/bash

_mvnenv_complete()
{
  COMPREPLY=()
  local cur="${COMP_WORDS[COMP_CWORD]}"
  local prev="${COMP_WORDS[COMP_CWORD-1]}"
  local completions=$(mvnenv completions "$cur" "$prev")
  COMPREPLY=( $(compgen -W "$completions" -- "$cur") )
}

complete -o nospace -F _mvnenv_complete mvnenv
