# MB dotfiles (macOS) ⚙️

My macOS configuration files, kept one folder per setup. Each version is a
complete, self-contained snapshot: terminal, shell and prompt.

| Version | Terminal | Shell | Prompt   | Status      |
| ------- | -------- | ----- | -------- | ----------- |
| v1      | WezTerm  | zsh   | Starship | Archived    |
| v2      | Ghostty  | fish  | Starship | **Current** |

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

```
v2/
└── .config/
    ├── starship.toml            Prompt: catppuccin_frappe palette, powerline segments, clock
    ├── fish/
    │   ├── config.fish          Env vars, asdf and pnpm on PATH, Starship init, reload
    │   └── functions/
    │       └── fish_greeting.fish   Boxed welcome banner shown on every new shell
    └── ghostty/
        └── config               Terminal: JetBrains Mono 20, Catppuccin Macchiato theme
```

Destination on the machine:

- `v2/.config/starship.toml` → `~/.config/starship.toml`
- `v2/.config/fish/` → `~/.config/fish/`
- `v2/.config/ghostty/config` → `~/.config/ghostty/config`
