# zsh-chezmoi

Add completion and aliases for [chezmoi](https://www.chezmoi.io).

Detects if you have any git aliases (i.e. from [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git)) and dynamically creates chezmoi aliases for them.

## Installation

Using [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh), clone into `$ZSH_CUSTOM/plugins/chezmoi`:

```sh
git clone https://github.com/mass8326/zsh-chezmoi.git $ZSH_CUSTOM/plugins/chezmoi
```

Then add `chezmoi` after `git` to your `plugins` array:

```diff
 plugins=(
   ...
   git
+  chezmoi
   ...
 )
```

## Usage

`zsh-chezmoi` adds several aliases to make managing your dotfiles quick and easy.

| Alias  | Command                | Desc                                         |
| ------ | ---------------------- | -------------------------------------------- |
| `ch`   | `chezmoi`              | Run chezmoi                                  |
| `chd`  | `chezmoi diff`         | Print diff between your source and target    |
| `cha`  | `chezmoi apply`        | Apply source changes to your target          |
| `che`  | `chezmoi edit`         | Edit chezmoi source using your `$EDITOR`     |
| `chea` | `chezmoi edit --apply` | Edit chezmoi source then apply to target     |
| `chcd` | `chezmoi cd`           | Spawn shell in chezmoi source directory      |
| `chud` | `chezmoi update`       | Pull from remote and apply changes to target |

`zsh-chezmoi` also detects any `git` aliases that start with `g` and adds the corresponding alias for `chezmoi git`. For this to happen, the alias must exist before `zsh-chezmoi` is instantiated.

| Alias      | Command                    |
| ---------- | -------------------------- |
| `chga`     | `chezmoi git -- add`       |
| `chgaa`    | `chezmoi git -- add --all` |
| `chgst`    | `chezmoi git -- status`    |
| `chgc`     | `chezmoi git -- commit`    |
| `chgp`     | `chezmoi git -- push`      |
| `chg[...]` | `chezmoi git -- [...]`     |
