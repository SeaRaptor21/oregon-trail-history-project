extends Node2D

func _ready():
	for i in range(get_child_count()):
		get_child(i).tile_set.set_physics_layer_collision_mask(0,2**(i+1))
