extends CanvasLayer

game_upgrades
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
<<<<<<< HEAD:CyberCyberCity/player/scripts/game_upgrades.gd
=======

func interact():
	linear_velocity.y = 1
	var output = []
	print(Global.games["pool"]["game"])
	OS.execute(Global.games["pool"]["game"], output)
>>>>>>> 5ebc6198f98e59b353e4f9f811a87ac228da3786:CyberCyberCity/npcs/bruce/npc.gd
