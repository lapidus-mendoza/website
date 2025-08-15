extends Sprite2D
@onready var collision_shape_2d: CollisionShape2D = $touch/CollisionShape2D
@onready var touch: Area2D = $touch
@export var Script_Enabled = false #godot does not have a build in disable script so this is how to bypass that



	
func _process(_delta):
	if Script_Enabled == true:
		var velocity = Vector2()  # Create a new Vector2
		velocity.x = +2
		position += velocity
		
