# custom path exports
set -x GOPATH (go env GOPATH)
set -x PATH /usr/local/bin /usr/local/sbin $PATH $HOME/bin $GOPATH/bin $HOME/.cargo/bin /opt/cisco/anyconnect/bin

set -x EDITOR nvim

set -x RUST_SRC_PATH $HOME/.rustup/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/library

alias ls="ls -GFh"
alias fp="nvim ~/.config/fish/config.fish"
alias fpr="source ~/.config/fish/config.fish"
alias g="git"
alias gs="git status"
alias gd="git diff"
alias gl="git log --oneline"
alias gln="git log --oneline -n"
alias hs="hub sync"
alias chromeguest="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --guest"

alias ax="aws-okta exec --mfa-factor-type push --mfa-provider OKTA"
alias tfinit="terraform init"
alias tfv="terraform validate"

# editor aliases
alias vi="nvim"
alias vim="nvim"

alias gentfdocs="terraform-docs markdown table . > README.md"

if test -e ~/.config/fish/aliases.fish
  source ~/.config/fish/aliases.fish
end

if test -e ~/.config/fish/tokens.fish
  source ~/.config/fish/tokens.fish
end

if test -e ~/bin/z-fish/z.fish
  source ~/bin/z-fish/z.fish
end

if test -e ~/.asdf/asdf.fish
  source ~/.asdf/asdf.fish
end

function ch
  aws-okta exec $argv[1] -- chamber $argv[2..-1]
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/bin/gcloud/path.fish.inc" ]; source "$HOME/bin/gcloud/path.fish.inc"; end
