extends Area2D
var zero = 0
var slow = false
var warning = 0
func _on_area_entered(area: Area2D) -> void:
	while true:
		if slow == true and warning == 0:
			await get_tree().create_timer(0.1).timeout
		elif warning == 1:
			break
		else:
			slow = true
			zero += 1
			$"../CanvasLayer/HBoxContainer/score2".text = "            " + str(zero)
			area.get_parent().queue_free()
			if warning == 0:
				await get_tree().create_timer(0.1).timeout
				slow = false
				break
			else:
				break

func _on_animated_sprite_2d_lost() -> void:
	warning = 1
