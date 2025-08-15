extends Node
@onready var enemey_1: Sprite2D = $enemey1

func dup(enemey):
	await get_tree().create_timer(0.2).timeout
	if enemey_1.is_inside_tree(): #avoid errors
		var d = enemey.duplicate()
		d.Script_Enabled = true
		enemey_1.get_parent().add_child(d)
		var randomloocking = randf_range(-10,+10)
		d.position -= Vector2(0,randomloocking)


# Called when the node enters the scene tree for the first time.
func _enter_tree() -> void: #duplicatre the ones that need to be duplicated
	while true:
		dup($enemey1)
		dup($enemey2)
		dup($enemey3)
		dup($enemey4)
		dup($enemey5)
		dup($enemey6)
		await get_tree().create_timer(2).timeout
