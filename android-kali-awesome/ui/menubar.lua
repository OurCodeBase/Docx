-- {{{ Menu
-- Create a launcher widget and a main menu
myawesomemenu = {
   { "Hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
   { "Manual", terminal .. " -e man awesome" },
   { "Edit Config", editor_cmd .. " " .. awesome.conffile },
   { "Restart", awesome.restart },
   { "Quit", function() awesome.quit() end },
}

beautiful.menu_height = 25
beautiful.menu_width = 180
beautiful.menu_bg_normal = "#2b3339"
beautiful.menu_bg_focus = "#fff9e8"
beautiful.menu_fg_focus = "#2b3339"
local menu_awesome = { "Awesome", myawesomemenu}
local menu_terminal = { "Open Terminal", terminal }