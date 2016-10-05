///scr_Obstacle_Placement();
x = mouse_x;
y = mouse_y;
if(mouse_check_button_pressed(mb_left) and alarm[0] <= 0){
    state = scr_Obstacle_Wait;
    active = true;
}
