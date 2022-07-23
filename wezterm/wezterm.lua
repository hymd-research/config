local wezterm = require 'wezterm';

return {
    window_background_opacity = 0.8,
    font = wezterm.font("Hack Nerd Font Mono"),
    font_size = 14.0,
    native_macos_fullscreen_mode = false,
    default_cursor_style = "BlinkingUnderline",
    colors = {
        foreground = "#eceef0",
        background = "#263137",
        cursor_fg = "#263137",
        cursor_bg = "#edeeed",
        cursor_border = "#b3ecff",
        selection_fg = "#eceef0",
        selection_bg = "#607c8a",
        scrollbar_thumb = "#eceef0",
        split = "#192023",
        ansi = {
            "#546d79",
            "#fe5151",
            "#69efad",
            "#ffd640",
            "#40c3fe",
            "#fe3f80",
            "#64fcda",
            "#fffefe"
        },
        brights = {
            "#b0bdc4",
            "#fe897f",
            "#b9f5c9",
            "#ffe47e",
            "#80d7fe",
            "#fe7faa",
            "#a7fdeb",
            "#fffefe",
        }
    }
}
