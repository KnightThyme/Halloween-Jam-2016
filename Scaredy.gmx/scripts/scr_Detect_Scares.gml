///scr_Detect_Scares()
if(place_meeting(x + move_speed * facing, y, obj_Obstacle)){
    obstacle = instance_place(x + move_speed * facing, y, obj_Obstacle);
}
if(obstacle != noone and obstacle.object_index != obj_Floor){
    if(obstacle.active == true){
        switch(obstacle.object_index){
            case obj_RunAwayScare:
                if(facing == MOVING_LEFT){
                    facing = MOVING_RIGHT;
                }else if(facing == MOVING_RIGHT){
                    facing = MOVING_LEFT;
                }
                is_afraid = true;
                fright += 20;
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
            case obj_lock_box:
                if(facing == MOVING_LEFT){
                    facing = MOVING_RIGHT;
                }else if(facing == MOVING_RIGHT){
                    facing = MOVING_LEFT;
                }
                obstacle = noone;
                state = scr_Scaredy_Walk;
            break;
            
            break;
        }
    }
}
//if hazard
if(place_meeting(x + move_speed * facing, y, obj_insta_death)){
    obstacle = instance_place(x + move_speed * facing, y, obj_insta_death);
}
if(obstacle != noone and obstacle.object_index != obj_Floor){
    if(obstacle.active == true){
        switch(obstacle.object_index){
            case obj_bear_trap:
                alarm[0] = 15;
                fright += 100;
                obstacle = noone;
            break;
            case obj_spikes:
                fright += 100;
                obstacle = noone;
            break;
            case obj_falling:
                fright += 100;
                obstacle = noone;
            break;
            default:
            
            break;
        }
    }
}
