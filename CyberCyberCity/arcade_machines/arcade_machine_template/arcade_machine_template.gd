extends StaticBody3D

var executable
var skin
var config
var icon
<<<<<<< HEAD
var game_name

var texture

func init(importedGame = {}):
=======

var texture

func _instatiate(importedGame = {}):
>>>>>>> 5ebc6198f98e59b353e4f9f811a87ac228da3786
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
<<<<<<< HEAD
	if Global.tokens >= 1:
		Global.tokens -= 1
		$GameOverlay.visible = true
		$GameOverlay.layer = 1
		#var args = PackedStringArray(["-usefixedtimestep", "-FPS=1", "-SECONDS=1"])
		var launch_args = PackedStringArray([""])
		for key in Global.upgrades_bought[game_name]:
			launch_args.append(Global.upgrades_bought[game_name][key])
		await get_tree().create_timer(1).timeout
		var output = []
		OS.execute(executable, launch_args, output)
		var temp_file_path = "res://games/temp.dat"
		#var temp_file_path = OS.get_executable_path().get_base_dir().path_join("games/temp.dat")
		var file = FileAccess.open(temp_file_path, FileAccess.READ)
		var final_score = file.get_var()
		
		if randf() < pow(100.0*2.718282, -(float(final_score)/2000)):
			$GameOverlay/TokenFound.visible = true
			await get_tree().create_timer(3).timeout
			$GameOverlay/TokenFound.visible = false
			Global.tokens += 1
			
		Global.tickets += final_score
		$GameOverlay.visible = false
		$GameOverlay.layer = -1
		file = FileAccess.open(temp_file_path, FileAccess.WRITE)
		file.store_var(0)
		return
	else:
		$Beep.play()
		return
		
=======
	var output = []
	OS.execute(executable, output)
>>>>>>> 5ebc6198f98e59b353e4f9f811a87ac228da3786
