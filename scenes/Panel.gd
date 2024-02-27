extends Panel


# Called when the node enters the scene tree for the first time.
func _ready():
	print()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = \
	"""Date: %s
	Health: %s
	Food Remaining: %d pounds
	Miles Traveled: %d miles
	""" \
	% [Game.date, Game.health, Game.food_left, Game.total_traveled]




