# =======================================
# 🌎 Environment variables
# =======================================
set -gx GITHUB_TOKEN "placeholder_value"

# =======================================
# 🐟 Fish configuration
# =======================================

# =======================================
# 🛠️ asdf
# =======================================

# Add asdf shims to PATH.
# Shims are small executables that redirect commands such as
# `node`, `java`, and `bun` to the version managed by asdf.
if test -z $ASDF_DATA_DIR
    # Use the default asdf data directory.
    set _asdf_shims "$HOME/.asdf/shims"
else
    # Use the custom ASDF_DATA_DIR when it is configured.
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Add the asdf shims to the beginning of PATH if they are not
# already present.
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end

# Remove the temporary variable.
set --erase _asdf_shims

# =======================================
# 📦 pnpm
# =======================================

# Directory where the standalone pnpm installation lives.
set -gx PNPM_HOME "$HOME/Library/pnpm"

# Add pnpm to PATH if it is not already present.
if not contains $PNPM_HOME $PATH
    set -gx --prepend PATH $PNPM_HOME
end

# =======================================
# 🚀 Starship
# =======================================
starship init fish | source

# =======================================
# 🧰 Local tools
# =======================================

# Add user-installed CLI tools to the end of PATH so they do not
# take precedence over tools in earlier PATH entries.
fish_add_path --append "$HOME/.local/bin"

# =======================================
# 🔄 Utilities
# =======================================

# Reload Fish configuration.
function reload
    source ~/.config/fish/config.fish
end
