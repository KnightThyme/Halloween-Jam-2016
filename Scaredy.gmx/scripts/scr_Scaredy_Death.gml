///scr_Scaredy_Pause();
if (mouse_check_button_released(mb_right)){
    room_restart();
    var_obj_count = 0;
    with(obj_room_restart){
        instance_destroy();
    }
}
