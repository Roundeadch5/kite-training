#region //Some shit that makes the player input only numbers and transfer it to the variable
if (writeable == true){
    keyboard_string = string_digits(keyboard_string);
    if (keyboard_check_pressed(vk_enter)){
        if (keyboard_string != "")
        {
            global.attackspeed = real(keyboard_string)/100;
			room_goto_next();
        }
        input_active = false;
        keyboard_string = "";
    }
}
#endregion

#region //Choosing kite style
if keyboard_check_pressed(vk_right){
	global.kitestyle = false;
}

if keyboard_check_pressed(vk_left){
	global.kitestyle = true;
}
#endregion