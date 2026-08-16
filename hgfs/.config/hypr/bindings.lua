-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
hl.unbind("SUPER + ALT + SPACE")
o.bind("SUPER + ALT + SPACE", "Omarchy menu", "omarchy-menu toggle root")

hl.unbind("SUPER + SPACE")
o.bind("SUPER + SPACE", "App menu", "omarchy-menu toggle apps")

hl.unbind("SUPER + W")
hl.unbind("SUPER + Q")
o.bind("SUPER + Q", "Close window", hl.dsp.window.close())

-- Remove preinstalled Google webapp bindings.
hl.unbind("SUPER + SHIFT + CTRL + G")
hl.unbind("SUPER + SHIFT + P")
hl.unbind("SUPER + SHIFT + S")
o.bind("SUPER + SHIFT + S", "Screenshot", "omarchy-capture-screenshot")

-- Unbind SUPER+L (was: Toggle workspace layout)
hl.unbind("SUPER + L")
o.bind("SUPER + L", "Logoff", "omarchy-system-logout")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

-- Voxtype: push-to-talk dictation.
-- Unbind SUPER+8 (was: switch to workspace 8, bound via code:17)
hl.unbind("SUPER + code:17")
o.bind("SUPER + 8", "Toggle dictation", "voxtype record toggle")

-- Voxtype: toggle dictation language en/pt.
-- Unbind SUPER+CTRL+8 (was: bar panel 8, bound via code:17)
hl.unbind("SUPER + CTRL + code:17")
o.bind("SUPER + CTRL + 8", "Toggle dictation language (en/pt)", "~/.config/hypr/scripts/toggle-voxtype-language.sh")

-- Unbind SUPER+CTRL+S (was: Share)
hl.unbind("SUPER + CTRL + S")
o.bind("SUPER + CTRL + S", "Toggle screen recording", "omarchy-capture-screenrecording")

--UNBIND CTRL + SHIFT + TAB 
hl.unbind("CTRL + SHIFT + TAB")
o.bind(
  "CTRL + SHIFT + TAB",
  "Workspace overview",
  "omarchy-shell shell summon mirador '{}'"
)

--UNBIND SUPER + SHIFT + E for new email
hl.unbind("SUPER + SHIFT + E")
o.bind(
  "SUPER + SHIFT + E",
  "Proton mail",
  "gtk-launch Email"
)