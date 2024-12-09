extends StaticBody3D

var executable
var skin
var config
var icon
var game_name

var texture

func init(importedGame = {}):
	var game = importedGame
	
	executable = game["game"]
	skin = Image.load_from_file(game["skin"])
	config = game["config"]
	icon = game["icon"]
	
	print(game["skin"])
	
	#$Skin.texture = ImageTexture.create_from_image(skin)
	var new_mat = StandardMaterial3D.new()
	new_mat.albedo_texture = ImageTexture.create_from_image(skin)
	new_mat.disable_receive_shadows = true
	new_mat.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	#new_mat.albedo_texture_force_srgb = true
	$Model.material_overlay = new_mat

	
	#TODO position placement random for testing
# Called when the node enters the scene tree for the first time.

func _ready():
	rotate_y(PI + randf_range(-0.3, 0.3))
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func interact():
	if Global.tokens >= 1:
		Global.tokens -= 1
		$GameOverlay.visible = true
		$GameOverlay.layer = 1
		#var args = PackedStringArray(["-usefixedtimestep", "-FPS=1", "-SECONDS=1"])
		var launch_args = PackedStringArray([""])
		for key in Global.upgrades_bought[game_name]:
			launch_args.append(Global.upgrades_bought[game_name][key])
		await get_tree().create_timer(0.2).timeout
		var output = []
		OS.execute(executable, launch_args, output)
		
		#switches to internal games folder path for testing
		var temp_file_path = ""
		if OS.has_feature("editor"):
			temp_file_path = "res://games/temp.dat"
		else:
			temp_file_path = OS.get_executable_path().get_base_dir().path_join("games/temp.dat")
			
		var file = FileAccess.open(temp_file_path, FileAccess.READ_WRITE)

		#fixes invalid data stored in the temp.dat file
		var final_score = 0.0
		
		var score = file.get_var()
		if score != null:
			final_score = score

		file.store_var(0.0)

		Global.tickets += float(final_score)
		$GameOverlay.visible = false
		$GameOverlay.layer = -1
		
		#random decaying chance to get a token based on score[ 0 score = 100% chance, 10,000 score =~ 0% chance ]
		if randf() < pow(100.0*2.718282, (-1 * (float(final_score)/2000.0))):
			$TokenFound.visible = true
			await get_tree().create_timer(3).timeout
			$TokenFound.visible = false
			Global.tokens += 1


		return
	else:
		$Beep.play()
		return
		
