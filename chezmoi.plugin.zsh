# Ensure chezmoi is available
[[ $+commands[chezmoi] ]] || return 0

# Completion
source <(chezmoi completion zsh)

# Status
alias ch="chezmoi"
alias chd="chezmoi diff"
alias chst="chezmoi status"
alias chdoc="chezmoi doctor"

# Editing source
alias cha="chezmoi add"
alias chr="chezmoi re-add"
alias che="chezmoi edit"
alias chea="chezmoi edit --apply"
alias chcd="chezmoi cd"

# Updating target
alias chap="chezmoi apply"
alias chup="chezmoi update"
alias chug="chezmoi upgrade"

# Standardized $0 handling
0="${ZERO:-${${0:#$ZSH_ARGZERO}:-${(%):-%N}}}"
0="${${(M)0:#/*}:-$PWD/$0}"

# Git
[[ $+commands[git] ]] || return 0
source <(alias | awk -F "='" -f "${0:h}/alias.awk")
alias chg="chezmoi git --"
