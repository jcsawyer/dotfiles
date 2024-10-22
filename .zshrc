export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.3 # run chruby to see actual version
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"
alias config="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"


# Load Angular CLI autocompletion.
source <(ng completion script)
