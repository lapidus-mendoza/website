extends Node2D
var onetime = true
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D



func _on_animated_sprite_2d_lost() -> void:
	if onetime:
		$AnimatedSprite2D/Button.queue_free()
		$AnimatedSprite2D/TouchScreenButton.queue_free()
		onetime = false #in case it takes a short time to load main to avoid a error
		await get_tree().create_timer(0.5).timeout
		$".".get_tree().change_scene_to_file("res://main.tscn")
