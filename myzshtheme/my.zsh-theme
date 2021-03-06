if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="yellow"; fi
if [ -n "$SSH_CLIENT" ]; then NCOLOR="cyan"; fi

PROMPT='%{$fg[$NCOLOR]%}%n@%m%{${fg_bold[blue]}%}: %{$reset_color%}%{${fg[green]}%}%1~%{${fg_bold[$CARETCOLOR]}%} > %{${reset_color}%} '
RPROMPT='%{$fg[red]%}%p $(git_prompt_info)%{$reset_color%}$(virtualenv_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
ZSH_THEME_GIT_PROMPT_DIRTY="💩 "
ZSH_THEME_GIT_PROMPT_CLEAN=""

# See http://geoff.greer.fm/lscolors/
export LSCOLORS="exfxcxdxbxbxbxbxbxbxbx"
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=31;40:cd=31;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"

