#region //to make itself destroy when it touches an enemy
if 	(place_meeting(self.x, self.y, obj_enemy)){
	instance_destroy();
}
#endregion

#region //move towards enemy
if (instance_exists(obj_enemy)){
	move_towards_point(obj_enemy.x, obj_enemy.y, global.attackspeed*4);
}
#endregion