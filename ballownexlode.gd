extends AnimatedSprite2D
@onready var ballown: AnimatedSprite2D = $"."
signal lost
var istrue = false
var onetouch = true
# Called when the node enters the scene tree for the first time.


func _process(_delta: float) -> void:
	if istrue == true:
		global_position = get_global_mouse_position()
		


func _on_area_2d_area_entered(_touched: Area2D) -> void:
	if onetouch:
		onetouch = false
		istrue = false
		$".".visible = false
		lost.emit() #emit to avoid a error when 2 area2d touch at the same time etc


func _on_button_button_down() -> void:
	istrue = true

func _on_button_button_up() -> void:
	istrue = false

#touch screen


func _on_touch_screen_button_pressed() -> void:
	istrue = true


func _on_touch_screen_button_released() -> void:
	istrue = false
