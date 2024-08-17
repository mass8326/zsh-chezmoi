# Ensure chezmoi is available
[[ $+commands[chezmoi] ]] || return 0

# Completion
source <(chezmoi completion zsh)

# Utilities
alias ch="chezmoi"
alias chd="chezmoi diff"
alias chcd="chezmoi cd"
alias chst="chezmoi status"

# Editing source
alias cha="chezmoi add"
alias chr="chezmoi re-add"
alias che="chezmoi edit"
alias chea="chezmoi edit --apply"

# Updating target
alias chap="chezmoi apply"
alias chud="chezmoi update"

# Standardized $0 handling
0="${ZERO:-${${0:#$ZSH_ARGZERO}:-${(%):-%N}}}"
0="${${(M)0:#/*}:-$PWD/$0}"

# Git
[[ $+commands[git] ]] || return 0
source <(alias | awk -F "='" -f "${0:h}/alias.awk")
alias chg="chezmoi git --"
