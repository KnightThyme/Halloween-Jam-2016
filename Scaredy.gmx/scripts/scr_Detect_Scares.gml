///scr_Detect_Scares()
if(place_meeting(x + move_speed * facing, y, obj_Obstacle)){
    obstacle = instance_place(x + move_speed * facing, y, obj_Obstacle);
}
if(obstacle != noone){
    if(obstacle.active == true){
        switch(obstacle.object_index){
            case obj_RunAwayScare:
                if(facing == MOVING_LEFT){
                    facing = MOVING_RIGHT;
                }else if(facing == MOVING_RIGHT){
                    facing = MOVING_LEFT;
                }
                is_afraid = true;
                fright += 10;
                obstacle = noone;
                state = scr_Scaredy_Running;
            break;
            case obj_JumpScare:
                alarm[0] = 15;
                fright += 10;
                obstacle = noone;
                state = scr_Scaredy_Jumping;
            break;
            default:
            
            break;
        }
    }
}

