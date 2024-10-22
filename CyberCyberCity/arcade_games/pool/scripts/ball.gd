extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	#linear_velocity.x = randf_range(-1500, 1500)
	#linear_velocity.x = randf_range(-1500, 1500)
	var ballColour = Color(randf_range(0,1),randf_range(0,1),randf_range(0,1))
	set_modulate(ballColour)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	#linear_velocity.x = linear_velocity.x - (linear_velocity.x*0.75)/(pow(pow(linear_velocity.x, 2)+ pow(linear_velocity.y, 2), 1/2))
	#linear_velocity.y = linear_velocity.y - (linear_velocity.y*0.75)/(pow(pow(linear_velocity.x, 2)+ pow(linear_velocity.y, 2), 1/2)) 
	pass
