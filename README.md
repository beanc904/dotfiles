# Init dotfiles

1. [initialize](https://www.chezmoi.io/user-guide/setup/) the dotfiles local repo.

```bash
chezmoi init git@github.com:beanc904/dotfiles.git
```

2. check diff between working copy and home directory, and than apply it.

```bash
chezmoi diff
chezmoi apply
```

# Daily operations

[chezmoi.io](https://www.chezmoi.io/user-guide/daily-operations/)

1. use `chezmoi-sync pull` to get the remote repo update.
2. use `chezmoi-sync push` to push the local repo to remote.
