extends Sprite2D
@onready var button: Button = $Button
var click = true

# Called when the node enters the scene tree for the first time.

func _on_button_button_up() -> void:
	if click == true: #avoid spaming the button then causing a error
		click = false
		await get_tree().create_timer(0.5).timeout
		get_tree().change_scene_to_file("res://game.tscn")
