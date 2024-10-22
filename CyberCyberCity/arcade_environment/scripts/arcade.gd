extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	print(get_mod_folder_path())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func get_mod_folder_path():
	if OS.has_feature("editor"):
		return "res://arcade_games/"
	else:
		return OS.get_executable_path().get_base_dir().path_join("arcade_games/")
