# Ensure chezmoi is available
[[ $+commands[chezmoi] ]] || return 0

# Completion
source <(chezmoi completion zsh)

# Utilities
alias ch="chezmoi"
alias chd="chezmoi diff"
alias chcd="chezmoi cd"

# Editing source
alias cha="chezmoi add"
alias chr="chezmoi re-add"
alias che="chezmoi edit"
alias chea="chezmoi edit --apply"

# Updating target
alias chap="chezmoi apply"
alias chud="chezmoi update"

# Git
[[ $+commands[git] ]] || return 0
source <(alias | awk -F "='" -f "${0:h}/alias.awk")
alias chg="chezmoi git --"
