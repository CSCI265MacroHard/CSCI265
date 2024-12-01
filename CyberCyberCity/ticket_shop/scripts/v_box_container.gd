extends VBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var imported_games = Global.games
	var h_box = $HBoxContainer
	#loop through all games folders
	for key in imported_games:
		var game = imported_games[key]
		var config = parse_config(game["config"])
		#loop through each upgrade of current game to add button
		for upgrade in config:
			if h_full(h_box):
				var h_box_scene = load("res://ticket_shop/scenes/h_box_container.tscn")
				h_box = h_box_scene.instantiate()
				add_child(h_box)
			h_box.add_button(str(game["name"]), config[upgrade], game["icon"])

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func h_full(h_box : HBoxContainer) -> bool:
	if h_box.get_child_count() > 5:
		return true
	else:
		return false

#parses game's json config
func parse_config(config) -> Dictionary:
	var json_as_text = FileAccess.get_file_as_string(config)
	var json_as_dict = JSON.parse_string(json_as_text)
	return json_as_dict
