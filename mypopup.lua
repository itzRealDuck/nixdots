local awful = require "awful"
local beautiful = require "beautiful"
local gears = require "gears"
local wibox = require "wibox" 

local naughty = require("naughty")

local dpi = beautiful.xresources.apply_dpi
local idk = awful.popup {
    widget = {
        {
        
            {
                {
                    text   = "The weather is in cairo is 15oC",
                    widget = wibox.widget.textbox
                },
                bg     = "#FF0000", 
                clip   = true,
                shape  = gears.shape.rounded_bar,
                widget = wibox.widget.background ,   

                
           
               
            },
            {
                value         = 0.5,
                forced_height = 100,
                forced_width  = 1000, 
                widget   = wibox.widget.progressbar,   
       
                
            },
            layout = wibox.layout.fixed.vertical,
        },
        margins = 10,
        widget  = wibox.container.margin, 

    },
    border_color = "#FF0000",
    border_width = 5,
    placement    =   function(self) awful.placement.top_right(self, { offset = { y = dpi(62), } }) end,
    shape        = gears.shape.rounded_rect,
    visible      = true, 
    hide_on_right_click = true, 
    ontop = true,   


  
}


local function show()
    idk.visible = true
end

return {
    show = show
}






