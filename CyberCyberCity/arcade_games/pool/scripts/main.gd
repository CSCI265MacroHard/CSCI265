extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass 
	
func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("exit"): get_tree().quit()
