[[ $+commands[chezmoi] ]] || return 0

source <(chezmoi completion zsh)
alias ch="chezmoi"
alias chd="chezmoi diff"
alias cha="chezmoi apply"
alias che="chezmoi edit"
alias chea="chezmoi edit --apply"
alias chcd="chezmoi cd"
alias chud="chezmoi update"

[[ $+commands[git] ]] || return 0
alias chg="chezmoi git --"
source <(alias | awk -F "='" -f "${0:h}/alias.awk")
