extends CanvasLayer

signal toggle_mouse_control
var player
# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_parent()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _open_shop():
	layer = 1
	visible = true
	player.release_mouse()


func _close_shop():
	layer = -1
	visible = false
	player.capture_mouse()

func _on_exit_pressed():
	_close_shop()
	pass # Replace with function body.
