# Directory info.
local current_dir='${PWD/#$HOME/~} '

# ret status
local ret_status="(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

# VCS
YS_VCS_PROMPT_PREFIX="%{$fg_bold[white]%}[%{$reset_color%}%{$fg_bold[cyan]%}"
YS_VCS_PROMPT_SUFFIX="%{$reset_color%} "
YS_VCS_PROMPT_DIRTY=" %{$fg[red]%}✗"
YS_VCS_PROMPT_CLEAN=" %{$fg[green]%}●"

# Git short sha
local git_sha='$(git_prompt_short_sha)'
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$fg_bold[red]%}("
ZSH_THEME_GIT_PROMPT_SHA_AFTER=")%{$reset_color%}%{$fg_bold[white]%}]%{$reset_color%} "

# Git info.
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="$YS_VCS_PROMPT_PREFIX"
ZSH_THEME_GIT_PROMPT_SUFFIX="$YS_VCS_PROMPT_SUFFIX"
ZSH_THEME_GIT_PROMPT_DIRTY="$YS_VCS_PROMPT_DIRTY"
ZSH_THEME_GIT_PROMPT_CLEAN="$YS_VCS_PROMPT_CLEAN"


# Prompt format: \n # DIRECTORY [GIT_BRANCH STATE GIT_SHA] [TIME] \n �~^~\
PROMPT="
%n@%m \
%{$terminfo[bold]$fg[yellow]%}${current_dir}%{$reset_color%}\
${git_info}\
${git_sha}\
%{$fg[white]%}[%*]
%${ret_status}%{$reset_color%}"
