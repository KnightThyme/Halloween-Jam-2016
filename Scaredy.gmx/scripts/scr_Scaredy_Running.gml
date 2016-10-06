///scr_Scaredy_Running();
if (var_pause = 0)
{
    x += scared_move_speed * facing;
    if(place_meeting(x + (scared_move_speed * facing), y, obj_Floor)){
        while(!place_meeting(x + facing, y, obj_Floor)){
            x += sign(facing);
        }
        if(facing == MOVING_LEFT){
            facing = MOVING_RIGHT;
        }else if(facing == MOVING_RIGHT){
            facing = MOVING_LEFT;
        }
        is_afraid = false;
        state = scr_Scaredy_Walk;
        
    }
    scr_Detect_Scares();
}else{
    scared_move_speed = 0;
}
