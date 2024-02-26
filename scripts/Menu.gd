extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/UI.tscn")


func _on_quit_button_pressed():
	get_tree().quit()


func _on_options_button_pressed():
	get_tree().change_scene_to_file("res://scenes/options.tscn")


func _on_slideshow_link_pressed():
	OS.shell_open("https://docs.google.com/presentation/d/1mHBInFT33DWgDUIb3SYBBBU8EBQkHQEslkuZ61BS2Qw/edit?usp=sharing")
