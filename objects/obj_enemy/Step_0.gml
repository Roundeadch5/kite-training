#region //move towards player
if (instance_exists(obj_player)){
	move_towards_point(obj_player.x, obj_player.y, global.attackspeed/3);
}
#endregion