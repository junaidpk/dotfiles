# mkcd - make a directory and change to it
#
# This makes a directory with parents and changes into it
# mkdir /some/path/that/does/not/exist
# pwd
# /some/path/that/does/not/exist
#
function mkdircd {
    mkdir -p "$*"
    cd "$*"
}

# gr - search recursively with grep
function gr {
    grep -R "$*" .
}

function weather {
  curl wttr.in/$1
}

# Saves repeating ps aux | grep foo
function psg {
  ps wwwaux | egrep "($1|%CPU)" | grep -v grep
}

compdef _pass workpass
zstyle ':completion::complete:workpass::' prefix "$HOME/.work-password-store"
workpass() {
  PASSWORD_STORE_DIR=$HOME/.work-password-store/ pass $@
}



