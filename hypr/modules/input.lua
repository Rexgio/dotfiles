-- ~/.config/hypr/modules/input.lua
-- https://wiki.hypr.land/Configuring/Basics/Variables/#input

hl.config({
    input = {
        follow_mouse = 1,
        sensitivity = 0,

        touchpad = {
            natural_scroll = true,
        },
    },
})

-- Swipe de 3 dedos en el trackpad para cambiar de escritorio
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
