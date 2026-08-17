function fish_greeting
    set -l width 42
    set -l current_date (date '+%A · %b %d')

    set_color '#babbf1'
    echo '+------------------------------------------+'
    echo '|'(string pad --center --width $width '')'|'

    set_color '#ca9ee6'
    echo '|'(string pad --center --width $width 'Welcome back')'|'

    set_color '#babbf1'
    echo '|'(string pad --center --width $width '')'|'

    set_color '#81c8be'
    echo '|'(string pad --center --width $width '󰀵 macOS  •  󰈺 Fish  •  󰊠 Ghostty')'|'

    echo '|'(string pad --center --width $width '')'|'

    set_color '#babbf1'
    echo '|'(string pad --center --width $width $current_date)'|'

    echo '|'(string pad --center --width $width '')'|'
    echo '+------------------------------------------+'

    set_color normal
end
