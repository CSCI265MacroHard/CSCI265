extends VBoxContainer



# Called when the node enters the scene tree for the first time.
func import_init(imported_games) -> void:
	var h_box = $HBoxContainer
	#loop through all games folders
	for key in imported_games:
		var game = imported_games[key]
		var config = parse_config(game["config"])
		#loop through each upgrade of current game to add button
		for upgrade in config:
			h_box.add_button(config[upgrade])
		if h_full(h_box):
			h_box = $HBoxContainer.new()
			h_box.make_button(imported_games[key])
			add_child(h_box)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func h_full(h_box) -> bool:
	if h_box.get_child_count() > 8:
		return true
	else:
		return false
		
func parse_config(config) -> Dictionary:
	return {}
