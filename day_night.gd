extends StaticBody2D

var state="day"

var change_state=false


var lengthday = 25
var lengthnight = 10


func _ready():
	if state=="day":
		$ColorRect.color.a = 0
	elif state=="night":
		$ColorRect.color.a = 150


func _on_timer_timeout():
	if state=="day":
		state=="night"
	if state=="night":
		state=="day"
	
	change_state=true
	
func _process(delta):
	if change_state==true:
		change_state==false
		if state=="day":
			change_to_day()
		elif state=="night":
			change_to_night()
			
func change_to_day():
	$AnimationPlayer.play("Nighttoday")
	$Timer.wait_time=lengthday
	$Timer.start()
	
func change_to_night():
	$AnimationPlayer.play("DaytonNght")
	$Timer.wait_time=lengthnight
	$Timer.start()
