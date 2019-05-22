# get the directory from when we're sourced
_ZSH_DIRCOLORS_NORD_DIR=${ZSH_DIRCOLORS_NORD_DIR:-${${0:A}:h}/nord-dircolors/src}
if [ -z "$_ZSH_DIRCOLORS_NORD_CONF" ]; then
    _ZSH_DIRCOLORS_NORD_CONF=$HOME/.zsh-dircolors.config
fi

function setupnord ()
{
    local _NORD_THEME="dir_colors"
    [[ $# -eq 1 ]] && _NORD_THEME=$1

    local _NORD_THEME_PATH="$_ZSH_DIRCOLORS_NORD_DIR/${_NORD_THEME}"
    if [[ -f $_NORD_THEME_PATH ]]; then
        eval $(dircolors $_NORD_THEME_PATH)
    else
        echo "Could not load theme $_NORD_THEME_PATH"
    fi

    # Save the settings to a file
    setopt CLOBBER
    echo $_NORD_THEME > $_ZSH_DIRCOLORS_NORD_CONF
    unsetopt CLOBBER
}

[[ -e $_ZSH_DIRCOLORS_NORD_CONF ]] && setupnord $(cat $_ZSH_DIRCOLORS_NORD_CONF)
