extends CharacterBody2D
#region TODO
#Controller support
#turn system
#ball scoring
#
#endregion
const SPEED = 300.0
const JUMP_VELOCITY = 400.0
var power = 0
var powerIncreasing = true

func _physics_process(delta):
	if get_parent().get_node("playerBall").sleeping:
		$CueSprite.visible = true
	else:
		$CueSprite.visible = false
	var playerBallPos = get_parent().get_node("playerBall").global_position
	var distanceToBall = global_position.distance_to(playerBallPos)
	
	# make the cue always facing the playerBall
	look_at(playerBallPos)
	
	if Input.is_action_pressed("ui_accept") and get_parent().get_node("playerBall").sleeping:
		if powerIncreasing == true:
			power = power + 1
			print(power)
			if power >= 150:
				powerIncreasing = false
		else:
			power = power - 1
			print(power)
			if power <= 1:
				powerIncreasing = true
	
	
	# add angular velocity to the playerBall based on the cue's position
	if Input.is_action_just_released("ui_accept") and get_parent().get_node("playerBall").sleeping:
		position = playerBallPos - Vector2(40, 0).rotated(global_rotation)
		await get_tree().create_timer(0.2).timeout
		get_parent().get_node("playerBall").linear_velocity = Vector2(power * 10, 0).rotated(global_rotation)
		power = 0
		
	if get_parent().get_node("playerBall").sleeping:
		if distanceToBall > (power/2) + 35:
			position = position + Vector2(1 * (distanceToBall /100), 0).rotated(rotation)
		if distanceToBall < (power/2) + 35:
			position = position + Vector2(-1 * (distanceToBall /100), 0).rotated(rotation)
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		position = position + Vector2(0, direction).rotated(rotation) * 3
	
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
	
	move_and_slide()
	
