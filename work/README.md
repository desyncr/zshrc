# work/

Machine/company-specific zsh config: internal hostnames, VPN-only paths,
employer tooling, etc. Nothing in this directory is tracked by git (see
`.gitignore`) — it stays local to whatever machine you set it up on.

`bootstrap.zsh` sources any of the following, if present, after loading
`personal/`:

* `alias.zsh`
* `functions.zsh`
* `env.zsh`

Just create the ones you need; there's no template to copy.
