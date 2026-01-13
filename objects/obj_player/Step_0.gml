#region //To save location of the mouse to use while moving
target_x = mouse_x;
target_y = mouse_y;
#endregion

#region //Movement
if ((mouse_check_button_pressed(mb_right)) and (canmove == true)){
	move_towards_point(target_x, target_y, global.attackspeed+1);
	spointx = target_x;  //used in the code below
	spointy = target_y;  //used in the code below
}
#endregion

#region //Makes you stop when you reach the point where you clicked
if (distance_to_point(spointx, spointy) == 0){
	speed = 0;
}
#endregion

#region //Attack move click stop
if (mouse_check_button_pressed(mb_left) and (canattack == true)){
	move_towards_point(self.x, self.y, 0);
}
#endregion

#region //Attacking
if ((mouse_check_button_pressed(mb_left)) and (point_distance(self.x, self.y, obj_enemy.x, obj_enemy.y) <= 128) and (canattack == true)){
	canmove = false;
	canattack = false;
	instance_create_depth(self.x, self.y, -1, obj_bullet);
	alarm[0] = 10/global.attackspeed;
	alarm[1] = 60/global.attackspeed;
} else if ((mouse_check_button_pressed(mb_left)) and (point_distance(self.x, self.y, obj_enemy.x, obj_enemy.y)) > 128){
	move_towards_point(obj_enemy.x, obj_enemy.y, global.attackspeed);
}
#endregion