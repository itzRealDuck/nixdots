local awful = require "awful"
local beautiful = require "beautiful"
local gears = require "gears"
local wibox = require "wibox"  
local weather_api = require("weather_api")
local lain = require("lain")

local naughty = require("naughty") 


local dpi = beautiful.xresources.apply_dpi
local idk = awful.popup {
    widget = {
        {
        
            {
                {
                    weather_text_widget = lain.widget.weather(),
          font = "Google Sans",
                    widget = wibox.widget.textbox
                },
                bg     = "#33a2ff", 
                clip   = true,
                shape  = gears.shape.rounded_bar,
           widget = wibox.widget.background,
		

                
           
               
            },
	    { 
		    value = 0.5, 
forced_height = 50, 
forced_width = 50,  
background_color = "#33a2ff", 
bar_border_color = "#33a2ff", 
border_color = "#33a2ff",
color = "#33a2ff",
        widget = wibox.widget.progressbar,




	    },
         
            layout = wibox.layout.fixed.vertical, 
	    
        }, 
	margins = 10, 
	widget = wibox.container.margin,

},    
    border_color = "#33a2ff",
    border_width = 5,
    placement    =   function(self) awful.placement.top_right(self, { offset = { y = dpi(62), } }) end,
    shape        = gears.shape.rounded_rect,
    visible      = true, 
    hide_on_right_click = true, 
    ontop = true,   
bg = "#33a2ff",

  
}
--



