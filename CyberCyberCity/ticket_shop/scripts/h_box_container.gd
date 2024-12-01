extends HBoxContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#called when a button needs to be added
func add_button(game: String, upgrade : Dictionary, icon : String):
	var button_scene = load("res://ticket_shop/scenes/button.tscn")
	var button = button_scene.instantiate()
	button.game_name = game
	button.arg = upgrade["arg"]
	button.upgrade_name = str(upgrade["name"])
	button.cost = upgrade["cost"]
	button.get_node("name").text = upgrade["name"]
	button.get_node("cost").text = var_to_str(int(upgrade["cost"])) + " Tickets"
	button.icon = load(icon)
	button.add_pip(upgrade["pip"])
	add_child(button)
