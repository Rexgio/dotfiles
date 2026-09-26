-- ~/.config/hypr/modules/decoration.lua
-- https://wiki.hypr.land/Configuring/Basics/Variables/#decoration

hl.config({
    decoration = {
        rounding = 4,

        active_opacity = 0.95,
        inactive_opacity = 0.85,

        shadow = {
            enabled = true,
            range = 15,
            render_power = 3,
            color = 0xee1a1a1a,
        },

        blur = {
            enabled = true,
            size = 5,
            passes = 2,
            vibrancy = 0.17,
        },
    },
})
