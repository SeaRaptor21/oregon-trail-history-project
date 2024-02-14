extends CharacterBody2D

const SPEED = 5.0
@onready var tilemap = get_node("../Tiles")
@onready var layers = tilemap.get_children()

var pos = Vector2(20,5)
var layer = 0

var dist_from_path = 0

func update_pos(collision):
	position = layers[layer].to_global(layers[layer].map_to_local(pos))
	position.y -= (281-163)/8.0
		print(int(str(collision.get_collider().name)[-1]))
	#if collision != null:
	#	print(collision.collider.name)

func _process(delta):
	pos -= Vector2(delta,0)
	if Input.is_action_just_pressed("left") and dist_from_path < 3:
		pos.y += 1
		dist_from_path += 1
	elif Input.is_action_just_pressed("right") and dist_from_path > -3:
		pos.y -= 1
		dist_from_path -= 1
	var collision = move_and_collide(Vector2.ZERO)
	update_pos(collision)
