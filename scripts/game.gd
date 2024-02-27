extends Node

var month=1
var month_names = ['January','February','March','April','May','June','July','August','September','October','November','December']
var month_lengths = [31,28,31,30,31,30,31,31,30,31,30,31]
var day=6:
	set(v):
		v -= month_lengths.slice(0,month-1).reduce(func(a,b): return a+b) if month > 1 else 0
		if v > month_lengths[month-1]:
			month += 1
		date="%s %d, 1848" % [month_names[month-1],v]
var date="%s %d, 1848" % [month_names[month-1],day]
var healths=["Good", "Fair", "Poor", "Very poor"]
var health_weights=[85,10,4,1]
var health=healths.pick_random()
var total_traveled=0
var food_amount=0:
	set(v):
		food_amount=v
		food_left=v
var food_left=0
var money_left=1800
var yokes_of_oxen=0
var sets_of_clothing=0
var ammo_boxes=0
var spare_parts=0
