extends Node

var games = {}

var tokens = 3
var tickets = 5000

var upgrades_bought = {}
var games_generated = -1
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

	_create_array(games.size())
	
	#get_parent().get_node("Arcade").get_node("Player/TicketShop").get_node("ScrollContainer/VBoxContainer").import_init(games)
func _create_array(arcade_machines: int) -> Array:
	# Calculate the number of columns
	var columns = 2 + arcade_machines * 2
	var H = 6
	# Create a 2D array with H rows and `columns` columns
	var array = []
	for i in range(H):
		array.append([])
		for j in range(columns):
			if i == 0 and j == 0:                  # Top-left corner
				array[i].append(0)
			elif i == 0 and j == columns - 1:      # Top-right corner
				array[i].append(5)
			elif i == H - 1 and j == 0:            # Bottom-left corner
				array[i].append(2)
			elif i == H - 1 and j == columns - 1:  # Bottom-right corner
				array[i].append(6)
			elif i == 0:                           # Top edge
				array[i].append(1)
			elif i == H - 1:                       # Bottom edge
				array[i].append(2)
			elif j == 0:                           # Left edge
				array[i].append(0)
			elif j == columns - 1:                 # Right edge
				array[i].append(3)
			else:                                  # Inner cells
				array[i].append(0)
	
	var middle_row = H / 2
	var spacing = (columns-1)/arcade_machines  # Calculate spacing between arcade machine cells
	for i in range(arcade_machines):
		var position = int(1+i * spacing)
		if position < columns and array[middle_row][position]==0:  # Ensure we don't go out of bounds
			array[middle_row][position] = 9
			
	populate_gridmap(array)
	
	print(array)
	
	return array
	
func populate_gridmap(array: Array) -> void:
	 #Iterate over the array to populate the GridMap
	for y in range(array.size()):  # Iterate rows
		for x in range(array[y].size()):  # Iterate columns
			var tile_index = array[y][x]
			var position = Vector3i(x,0,y)
			var Grid = get_parent().get_node("Arcade/ArcadeMap")
			if tile_index >= 0 and tile_index<9:  # -1 or other values could mean "no tile"
				Grid.set_cell_item(position, tile_index, 0)  # Place at (x, 0, y)
			elif tile_index == 9:
				Grid.set_cell_item(position,0,0)
				var cell_position = Grid.to_global(Grid.map_to_local(position))
				build_machines(cell_position)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta): #NOTE most likely won't be used but if something needs to be run on the physics server globally put it here.
	pass

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

func build_machines(cell_location) -> void:
	cell_location.y = 1
	games_generated += 1
	#loop through all folders that were imported
	print(games)
	var current_game = games[games_generated]
	var arcade_machine_template = load("res://arcade_machines/arcade_machine_template/arcade_machine_template.tscn")
	var new_machine = arcade_machine_template.instantiate()
	
	new_machine.init(current_game)
	new_machine.game_name = current_game["name"]
	
	get_parent().get_node("Arcade").add_child(new_machine)
	new_machine.position = cell_location
	
	return
	
func fetch_game_paths(file_name, dir):
	var game_num = -1
	while file_name != "":
		if dir.current_is_dir():
			var game_path = dir.get_current_dir().path_join(file_name)
			#find valid game packages
			if valid_game(game_path):
				print("currently writing to key " + file_name)
				upgrades_bought[file_name] = {}
				game_num += 1
				games[game_num] = {
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
