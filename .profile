# adds git repository directory as env var
export GIT_REPOS_PATH="${HOME}/git"

# dotfile repo information, is used in several places
export DOTFILES_REPO_NAME="dotfiles"
export DOTFILES_REMOTE_REPO_URL="https://github.com/reap2sow1/${DOTFILES_REPO_NAME}"

# ANSI escape code sequences for status messages with character coloring
export SUCCESS="\033[1;32m[SUCCESS]:\033[0m"
export WARNING="\033[1;33m[WARNING]:\033[0m"
export ERROR="\033[1;31m[ERROR]:\033[0m"

# The bashrc file should come from the dotfiles repo (ACTUAL_BASHRC_PATH)
# but any other script should just refer to bashrc's default location (as this might be 
# linked to the bashrc in dotfiles repo), at least for interactive non-login bash shells:
# ~/.bashrc
# https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#Bash-Startup-Files
# export ACTUAL_BASHRC_PATH="${GIT_REPOS_PATH}/${DOTFILES_REPO_NAME}/.bashrc"

# set if use custom prompt
CUSTOM_PROMPT=yes

# add .local/bin directory to PATH
export PATH="${PATH}:${HOME}/.local/bin"

if [ -n "$CUSTOM_PROMPT" ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\n\[\033[00m\]\$ '
fi
