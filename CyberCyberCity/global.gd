extends Node

var games = {}

var tokens = 3
var tickets = 100000000

var upgrades_bought = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	print(pow(100.0*2.718282, -(0.0/2000)))
	print(pow(100.0*2.718282, -(200.0/2000)))
	print(pow(100.0*2.718282, -(10000.0/2000)))
	
	var dir = DirAccess.open(get_games_folder_path())
	
	#starts file navigation with godot's DirAccess
	dir.list_dir_begin()
	var file_name = dir.get_next()
	fetch_game_paths(file_name, dir)
	#Loops through all files to...

	build_machines(games)
	#get_parent().get_node("Arcade").get_node("Player/TicketShop").get_node("ScrollContainer/VBoxContainer").import_init(games)

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

func valid_game(game_folder) -> bool:
	#TODO
	var dir = DirAccess.open(game_folder)
	#ensures all files are present
	var file_attendance = [
		dir.file_exists("game.exe"),
		dir.file_exists("skin.png"),
		dir.file_exists("config.json"),
		dir.file_exists("icon.svg")
		]
	return !file_attendance.has(false)

func build_machines(imported_games) -> void:
	
	#loop through all folders that were imported
	for key in imported_games:
		var arcade_machine_template = load("res://arcade_machines/arcade_machine_template/arcade_machine_template.tscn")
		var new_machine = arcade_machine_template.instantiate()
		new_machine.init(imported_games[key])
		new_machine.game_name = imported_games[key]["name"]
		get_parent().get_node("Arcade").add_child(new_machine)
	return
	
func fetch_game_paths(file_name, dir):
	while file_name != "":
		if dir.current_is_dir():
			var game_path = dir.get_current_dir().path_join(file_name)
			#find valid game packages
			if valid_game(game_path):
				print("currently writing to key " + file_name)
				upgrades_bought[file_name] = {}
				games[file_name] = {
					"name": file_name,
					"game": ProjectSettings.globalize_path(game_path.path_join("game.exe")),
					"skin": ProjectSettings.globalize_path(game_path.path_join("skin.png")),
					"config": ProjectSettings.globalize_path(game_path.path_join("config.json")),
					"icon": ProjectSettings.globalize_path(game_path.path_join("icon.svg"))
				}
			else:
			#reject invalid game packages
				print("directory: " + file_name + " has invalid setup or is missing files, skipping")	
		else:
			print("Found invalid file: " + file_name)
		file_name = dir.get_next()

func generate_grid() -> void:
	
	pass

func place_tile(x_wall, y_wall, xpos, ypos) -> void:
	
	pass
