extends StaticBody3D

var executable
var skin
var config
var icon

var texture

func _instatiate(importedGame = {}):
	var game = importedGame
	
	executable = game["game"]
	skin = load(game["skin"])
	config = game["config"]
	icon = game["icon"]
	
	$Skin.texture = skin
	
	#TODO position placement random for testing
	position.x = randf_range(5, -5)
	position.z = randf_range(5, -5)
# Called when the node enters the scene tree for the first time.

func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func interact():
	var output = []
	OS.execute(executable, output)
