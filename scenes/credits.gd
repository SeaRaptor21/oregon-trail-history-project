extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass







func _on_rich_text_label_meta_clicked():
	OS.open_shell("https://opensource.org/license/mit/")
