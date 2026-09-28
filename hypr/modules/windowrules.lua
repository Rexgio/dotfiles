-- ~/.config/hypr/modules/windowrules.lua
-- https://wiki.hypr.land/Configuring/Basics/Window-Rules/

hl.window_rule({
    name = "float-pavucontrol",
    match = { class = "^(pavucontrol)$" },
    float = true,
    size = "800 600",
})

hl.window_rule({
    name = "float-nm-editor",
    match = { class = "^(nm-connection-editor)$" },
    float = true,
})

hl.window_rule({
    name = "float-pip",
    match = { title = "^(Picture-in-Picture)$" },
    float = true,
})
-- ~/.config/hypr/modules/windowrules.lua

hl.window_rule({
    name = "nvim-no-blur",
    match = { class = "^(Alacritty)$", title = ".*nvim.*" },
    no_blur = true,
    opaque = true,
})
