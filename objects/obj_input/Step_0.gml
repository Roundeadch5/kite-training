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