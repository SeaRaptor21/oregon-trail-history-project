extends Control


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
	Game.food_amount+=50
	Game.money_left-=10
	print(Game.food_amount)
	print(Game.money_left)
	if Game.food_amount<=2000 and Game.money_left>0:
		foodamount.text = str(Game.food_amount)
		moneyleft.text = str(Game.money_left)
		
func _on_addoxen_pressed():
	Game.yokes_of_oxen+=1
	Game.money_left-=40
	print(Game.yokes_of_oxen)
	print(Game.money_left)
	if Game.yokes_of_oxen<=10 and Game.money_left>0:
		yokeamount.text = str(Game.yokes_of_oxen)
		moneyleft.text = str(Game.money_left)


func _on_addammo_pressed():
	Game.ammo_boxes+=1
	Game.money_left-=2
	print(Game.ammo_boxes)
	print(Game.money_left)
	if Game.ammo_boxes<=15 and Game.money_left>0:
		ammoamount.text = str(Game.ammo_boxes)
		moneyleft.text = str(Game.money_left)


func _on_addclothing_pressed():
	Game.sets_of_clothing+=1
	Game.money_left-=15
	print(Game.sets_of_clothing)
	print(Game.money_left)
	if Game.sets_of_clothing<=20 and Game.money_left>0:
		clothingamount.text = str(Game.sets_of_clothing)
		moneyleft.text = str(Game.money_left)




func _on_addspartparts_pressed():
	Game.spare_parts+=1
	Game.money_left-=30

	if Game.spare_parts<=20 and Game.money_left>0:
		spareparts.text = str(Game.spare_parts)
		moneyleft.text = str(Game.money_left)
