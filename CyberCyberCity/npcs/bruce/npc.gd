extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func interact():
	linear_velocity.y = 1
	var output = []
	print(Global.games["pool"]["game"])
	OS.execute(Global.games["pool"]["game"], output)
