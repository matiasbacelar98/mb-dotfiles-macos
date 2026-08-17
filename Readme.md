# MB dotfiles (macOS) ⚙️

My macOS configuration files, kept one folder per setup. Each version is a
complete, self-contained snapshot: terminal, shell and prompt.

| Version | Terminal | Shell | Prompt   | Status   |
| ------- | -------- | ----- | -------- | -------- |
| [v1](v1/) | WezTerm  | zsh   | Starship | Archived |
| v2      | Ghostty  | fish  | Starship | Current  |

## v1 — WezTerm + zsh + Starship

```
v1/
├── .config/
│   ├── starship.toml            Prompt: nord palette, git status, language versions
│   └── wezterm/
│       ├── wezterm.lua          Entry point: font, colors, blur, key/mouse bindings
│       ├── constants.lua        Mouse and key bindings, background image paths
│       ├── scripts.lua          gui-startup hook: centers the window at 70% of the screen
│       └── assets/              Blurred background images (unused, disabled in wezterm.lua)
└── .zsh/
    ├── .zshrc                   nvm, history, plugins, eza aliases, completion, Starship init
    ├── general.zsh              reload, histgrep, f, pingtest
    ├── copypath.zsh             Copies the current or given path to the clipboard
    └── command-not-found.zsh    Suggests a Homebrew formula for an unknown command
```

Destination on the machine:

- `v1/.config/starship.toml` → `~/.config/starship.toml`
- `v1/.config/wezterm/` → `~/.config/wezterm/`
- `v1/.zsh/.zshrc` → `~/.zshrc`
- `v1/.zsh/*.zsh` → `~/.zsh/scripts/`

`.zshrc` also sources `~/.zsh/plugins/`, which is not tracked here. Clone
zsh-autosuggestions and zsh-syntax-highlighting into that folder before starting
a new shell.

## v2 — Ghostty + fish + Starship

Not added yet.
