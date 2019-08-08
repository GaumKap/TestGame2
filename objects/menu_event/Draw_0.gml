draw_set_color(c_white)
draw_set_font(font0)

if positionpdmenu = 1 {draw_text_color(12,10,"Clasic Mode",c_yellow,c_yellow,c_yellow,c_yellow,1)}
else{draw_text(9,10,"Clasic Mode");}

if positionpdmenu = 2 {draw_text_color(12,40,"Debug Log Mode",c_yellow,c_yellow,c_yellow,c_yellow,1)}
else{draw_text(9,40,"Debug Log Mode");}

if positionpdmenu = 3 {draw_text_color(12,70,"Editor Mode",c_yellow,c_yellow,c_yellow,c_yellow,1)}
else{draw_text(9,70,"Editor Mode");}

if positionpdmenu = 4 {draw_text_color(12,100,"Settings",c_yellow,c_yellow,c_yellow,c_yellow,1)}
else{draw_text(9,100,"Settings");}

if positionpdmenu = 5 {draw_text_color(12,130,"Exit",c_yellow,c_yellow,c_yellow,c_yellow,1)}
else{draw_text(9,130,"Exit");}



// description 

if positionpdmenu = 1{draw_text(9,628,"Clasic Mod : # Play the game with Levels, Story, and without Debug Log")}
if positionpdmenu = 2{draw_text(9,628,"Debug Log Mod : # Play on Debug Levels with debug Log to see the actions")}
if positionpdmenu = 3{draw_text(9,628,"Editor Mod : # Only if i want develop this...")}
if positionpdmenu = 4{draw_text(9,628,"Settigns : # You can setup many features like : # Character, block color, background color, ect... ")}
if positionpdmenu = 5{draw_text(9,628,"Exit")}
