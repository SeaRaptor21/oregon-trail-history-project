extends Control


var food_amount=0
var money_left=1800
var yokes_of_oxen=0
var sets_of_clothing=0
var ammo_boxes=0
var spare_parts=0


@onready var foodamount = %foodamount
@onready var yokeamount = %yokeamount
@onready var moneyleft = %moneyleft
@onready var clothingamount = %clothingamount
@onready var ammoamount = %ammoamount
@onready var spareparts = %spareparts


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass





func _on_addfood_pressed():
	food_amount+=50
	money_left-=10
	print(food_amount)
	print(money_left)
	if food_amount<=2000 and money_left>0:
		foodamount.text = str(food_amount)
		moneyleft.text = str(money_left)
		
func _on_addoxen_pressed():
	yokes_of_oxen+=1
	money_left-=40
	print(yokes_of_oxen)
	print(money_left)
	if yokes_of_oxen<=10 and money_left>0:
		yokeamount.text = str(yokes_of_oxen)
		moneyleft.text = str(money_left)


func _on_addammo_pressed():
	ammo_boxes+=1
	money_left-=2
	print(ammo_boxes)
	print(money_left)
	if ammo_boxes<=15 and money_left>0:
		ammoamount.text = str(ammo_boxes)
		moneyleft.text = str(money_left)


func _on_addclothing_pressed():
	sets_of_clothing+=1
	money_left-=15
	print(sets_of_clothing)
	print(money_left)
	if sets_of_clothing<=20 and money_left>0:
		clothingamount.text = str(sets_of_clothing)
		moneyleft.text = str(money_left)




func _on_addspartparts_pressed():
	spare_parts+=1
	money_left-=30

	if spare_parts<=20 and money_left>0:
		spareparts.text = str(spare_parts)
		moneyleft.text = str(money_left)





func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/main.tscn")
