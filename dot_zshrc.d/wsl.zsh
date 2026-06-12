export PATH=$PATH:/opt/xtensa-esp-elf/bin/
export PATH=$PATH:/opt/xtensa-esp-elf/bin/
export PATH=$PATH:/opt/xtensa-esp-elf/bin/
export PATH=$PATH:/opt/xtensa-esp-elf/bin/
export PATH=$PATH:/opt/xtensa-esp-elf/bin/
export PATH=$PATH:/opt/xtensa-esp-elf/bin/


# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
# >>> init brew >>>
export HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew";
export HOMEBREW_CELLAR="/home/linuxbrew/.linuxbrew/Cellar";
export HOMEBREW_REPOSITORY="/home/linuxbrew/.linuxbrew/Homebrew";
fpath[1,0]="/home/linuxbrew/.linuxbrew/share/zsh/site-functions";
export PATH="${PATH}:/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin";
[ -z "${MANPATH-}" ] || export MANPATH=":${MANPATH#:}";
export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:${INFOPATH:-}";
# <<< init brew <<<


export PATH="/home/linuxbrew/.linuxbrew/opt/node@24/bin:$PATH"
export LDFLAGS="-L/home/linuxbrew/.linuxbrew/opt/node@24/lib"
export CPPFLAGS="-I/home/linuxbrew/.linuxbrew/opt/node@24/include"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/coffeebean/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/coffeebean/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/home/coffeebean/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/home/coffeebean/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba shell init' !!
export MAMBA_EXE='/home/coffeebean/miniforge3/bin/mamba';
export MAMBA_ROOT_PREFIX='/home/coffeebean/miniforge3';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias mamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<


export MEDIA_DIR="/mnt"
