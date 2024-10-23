extends Node

var games = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	var dir = DirAccess.open(get_games_folder_path())
	
	#starts file navigation with godot's DirAccess
	dir.list_dir_begin()
	var file_name = dir.get_next()
	
	#Loops through all files to...
	while file_name != "":
		if dir.current_is_dir():
			var game_path = dir.get_current_dir().path_join(file_name)
			#find valid game packages
			if valid_game(game_path):
				print("currently writing to key " + file_name)
				games[file_name] = {
					"game": ProjectSettings.globalize_path(game_path.path_join("game.exe")),
					"skin": ProjectSettings.globalize_path(game_path.path_join("skin.png")),
					"config": ProjectSettings.globalize_path(game_path.path_join("config.txt")),
					"icon": ProjectSettings.globalize_path(game_path.path_join("icon.svg"))
				}
			else:
			#reject invalid game packages
				print("directory: " + file_name + " has invalid setup or is missing files, skipping")	
		else:
			print("Found invalid file: " + file_name)
		file_name = dir.get_next()
		
	#TESTING
	print(games.keys())
	print(games.size())
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta): #NOTE most likely won't be used but if something needs to be run on the physics server globally put it here.
	pass
	
func fetch_files(folder) -> PackedStringArray: #DEPRECATED
	return DirAccess.get_files_at(folder)

func get_games_folder_path(): #Uses internally stored games folder when editing, but external one once compiled and exported.
	if OS.has_feature("editor"):
		return "res://games"
	else:
		return OS.get_executable_path().get_base_dir().path_join("games")

func valid_game(folder) -> bool:
	#TODO
	var dir = DirAccess.open(folder)
	print(folder)
	#ensures all files are present
	var file_attendance = [
		dir.file_exists("game.exe"),
		dir.file_exists("skin.png"),
		dir.file_exists("config.txt"),
		dir.file_exists("icon.svg")
		]
	return !file_attendance.has(false)
