extends CharacterBody2D

const SPEED = 5.0
@onready var tilemap = get_node("../Tiles")
@onready var layers = tilemap.get_children()

var pos = Vector2(23,0)
var layer = -1

var layer_change_cooldown = 0

var dist_from_path = 0

var rng = RandomNumberGenerator.new()

func choice(array: Array, weights: Array):
	assert(array.size() == weights.size())
	var sum:float = 0.0
	for val in weights:
		sum += val
	var normalizedWeights = []
	for val in weights:
		normalizedWeights.append(val / sum)
	var rnd = rng.randf()
	var i = 0
	var summer:float = 0.0
	for val in normalizedWeights:
		summer += val
		if summer >= rnd:
			return array[i]
		i += 1

func update_pos():
	position = layers[layer].to_global(layers[layer].map_to_local(pos))
	position.y -= (281-163)/8.0
	Game.total_traveled = floor(-pos.x+20)/3
	Game.day = 0.2*floor(-pos.x+20)
	Game.food_left = Game.food_amount-3*floor(-pos.x+20)
	rng.seed=floor(-pos.x+20)
	Game.health = choice(Game.healths, Game.health_weights)
	#print(int(str(collision.get_collider().name)[-1]))
	#if collision != null:
	#	print(collision.collider.name)

func _process(delta):
	layer_change_cooldown -= delta
	pos -= Vector2(delta,0)
	if Input.is_action_just_pressed("left") and dist_from_path < 3:
		pos.y += 1
		dist_from_path += 1
	elif Input.is_action_just_pressed("right") and dist_from_path > -3:
		pos.y -= 1
		dist_from_path -= 1
	update_pos()

func _on_area_2d_body_entered(body):
	if str(body.name).begins_with('Layer') and layer_change_cooldown<=0:
		if layer >= 0:
			OS.delay_msec(1000)
		layer_change_cooldown = 0.5
		layer += 1
		pos -= Vector2(3,1)
		print('hi')

func _on_area_2d_body_exited(body):
	if str(body.name).begins_with('Layer') and layer_change_cooldown<=0:
		#if layer >= 0:
		#	OS.delay_msec(1000)
		layer_change_cooldown = 1.5
		layer -= 1
		pos += Vector2(1,1)
		print('bye')
