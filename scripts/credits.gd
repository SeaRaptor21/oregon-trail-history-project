extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_rich_text_label_meta_clicked(meta):
	OS.shell_open(meta)
