# Clears every item in your path
unset path

# If you want to make sure you have the pyenv version executed first, add the pyenv
# shims dir as the first line in the list of paths in the .zprofile file:

# List all path entries you want before the "standard" PATH
PATH="\
$HOME/py-dev/atek:\
$HOME/py-dev/atek/atek/reports:\ # Command Line commands for atek package
$HOME/.pyenv/shims:\
$HOME/.pyenv/bin:\
$HOME/.pyenv/plugins/pyenv-virtualenv/shims:\
$HOME/.poetry/bin:"

# Add the default directories AFTER the above (+=)
PATH+="$HOME/bin:\
/usr/local/bin:\
/usr/bin:\
/bin:\
/usr/sbin:\
/sbin:\
/Applications/VMware Fusion.app/Contents/Public:\
/usr/local/munki:"

# Clean up possible duplicates in your path (ex. if iTerm is launching shells as login shells)
typeset -aU path

# Finally, export the whole enchilada
export PATH

# Now run the stuff that modifies the first entries in path
eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# Also make sure macOS gets the man pages right:
export MANPATH=$(manpath)

# Adding internal libraries to PYTHONPATH
export PYTHONPATH="\
$HOME/py-analysis:\
$HOME/py-dev/atek:\
$PYTHONPATH"

# Add user variables
source $HOME/dotfiles/nvim/aliases.sh
export ATEK_ROOT="$HOME/.atek"
export ATEK_VENV="$HOME/py-dev/atek/venv/bin/python"
export ATEK_DATA="$ATEK_ROOT/data"
export ATEK_CONNECTIONS="$ATEK_ROOT/connections"
export ATEK_REPORTS="$HOME/OneDrive - AppraisalTek/Reports"
export ATEK_LOGS="$ATEK_ROOT/logs"
export GITHUB_TOKEN="c01e872605ecd05f1236b049fbbb415e12885190"

# # Older user variables
# export ATEK02_MAIN="$HOME/.atek/atek02_main"
# export ACADEMY_DOMO="$HOME/.atek/acad_domo"
# export ATEK_LOCAL="$HOME/.atek/local"

# virtual env with neovim and pynvim installed
export PYENV_ROOT="$HOME/.pyenv"
export PYTHON3_HOST_PROG="$PYENV_ROOT/versions/neovim/bin/python"

# Disable prompt change when in a new environment to simulate future behavior
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# Activate VIRTUAL_ENV if it has a value
if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
  source "${VIRTUAL_ENV}/bin/activate"
fi
