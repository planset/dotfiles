
case ${UID} in
0)
    SIGN=#
    ;;
*)
    SIGN=%%
    ;;
esac


PROMPT='%{$fg_bold[red]%}%{$fg[magenta]%}%(3~,%-1~/../%1~,%~) %{$SIGN%}  %{$reset_color%}'
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'
RPROMPT='%{$fg[blue]%}$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}["
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%}]%{$reset_color%}"
