# Set nvim env vars
# export VIMCONFIG=$HOME/dotfile/nvim
# export VIMDATA=$HOME/.local/share/nvim

# Avoid nesting nvim
# if [-n "$NVIM_LISTEN_ADDRESS"]; then
#   if [-x "$(command -v nvr)"]; then
#     alias nvim=nvr
#   else
#     alias nvim=nvim
#   fi
# fi

# Set nvim env vars
# export VIMCONFIG=$HOME/dotfile/nvim
# export VIMDATA=$HOME/.local/share/nvim

# Avoid nesting nvim
# if [-n "$NVIM_LISTEN_ADDRESS"]; then
#   if [-x "$(command -v nvr)"]; then
#     alias nvim=nvr
#   else
#     alias nvim=nvim
#   fi
# fi

# Set nvim env vars
# export VIMCONFIG=$HOME/dotfile/nvim
# export VIMDATA=$HOME/.local/share/nvim

# Avoid nesting nvim
# if [-n "$NVIM_LISTEN_ADDRESS"]; then
#   if [-x "$(command -v nvr)"]; then
#     alias nvim=nvr
#   else
#     alias nvim=nvim
#   fi
# fi

# Set nvim env vars
export VIMCONFIG=$HOME/.config/nvim
export VIMDATA=$HOME/.local/share/nvim
export VIMPLUGS=$VIMCONFIG/autoload/plugged
export PATH=$PATH:$VIMPLUGS/fzf/bin

# Avoid nesting nvim and change the terminal prompt
if [ -n "$NVIM_LISTEN_ADDRESS"]; then
  if [-x "$(command -v nvr)"]; then
    alias nvim=nvr
    export PS1="nvim$ "
  else
    alias nvim=nvim
    export PS1="$ "
  fi
fi

# Set nvim env vars
export VIMCONFIG=$HOME/.config/nvim
export VIMDATA=$HOME/.local/share/nvim
export VIMPLUGS=$VIMCONFIG/autoload/plugged
export PATH=$PATH:$VIMPLUGS/fzf/bin

# Avoid nesting nvim and change the terminal prompt
if [ -n "$NVIM_LISTEN_ADDRESS"]; then
  if [-x "$(command -v nvr)"]; then
    alias nvim=nvr
    export PS1="nvim$ "
  else
    alias nvim=nvim
    export PS1="$ "
  fi
fi

# Set nvim env vars
export VIMCONFIG=$HOME/.config/nvim
export VIMDATA=$HOME/.local/share/nvim
export VIMPLUGS=$VIMCONFIG/autoload/plugged
export PATH=$PATH:$VIMPLUGS/fzf/bin

# Avoid nesting nvim and change the terminal prompt
if [ -n "$NVIM_LISTEN_ADDRESS"]; then
  if [-x "$(command -v nvr)"]; then
    alias nvim=nvr
    export PS1="nvim$ "
  else
    alias nvim=nvim
    export PS1="$ "
  fi
fi

# Set nvim env vars
export VIMCONFIG=$HOME/.config/nvim
export VIMDATA=$HOME/.local/share/nvim
export VIMPLUGS=$VIMCONFIG/autoload/plugged
export PATH=$PATH:$VIMPLUGS/fzf/bin

# Avoid nesting nvim and change the terminal prompt
if [ -n "$NVIM_LISTEN_ADDRESS"]; then
  if [-x "$(command -v nvr)"]; then
    alias nvim=nvr
    export PS1="nvim$ "
  else
    alias nvim=nvim
    export PS1="$ "
  fi
fi

