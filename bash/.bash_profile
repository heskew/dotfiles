# import other files

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

if [ -f ~/.profile ]; then
  source ~/.profile
fi

if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

if [ -f ~/.git-completion.bashrch ]; then
  # Autocomplete for 'g' as well
  complete -o default -o nospace -F _git g
  . ~/.git-completion.bash
fi


export PATH=/usr/local/bin:$PATH

# Add postgres app to bin
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin

##
# Your previous /Users/brian/.bash_profile file was backed up as /Users/brian/.bash_profile.macports-saved_2014-07-16_at_21:05:54
##

# MacPorts Installer addition on 2014-07-16_at_21:05:54: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$HOME/bin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

eval "$(gulp --completion=bash)"

# Setup Powerline
#. /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

function _update_ps1() {
   export PS1="$(~/.powerline-shell.py --cwd-max-depth 3 $? 2> /dev/null)"
}

export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin
export VAGRANT_DEFAULT_PROVIDER=vmware_fusion
