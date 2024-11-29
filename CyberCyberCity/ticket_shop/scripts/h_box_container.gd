extends HBoxContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# add a button if something is imported
	if something_is_imported():
		var new_button = Button.new()
		new_button.text = "New Imported Item"
		add_child(new_button)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func something_is_imported() -> bool:
	return true  # Replace with your actual condition
	
	var json = JSON.new()
	var json_string = JSON.stringify("data_to_send")
	var error = json.parse("json_string")
	if error == OK:
		var data_received = json.data
		if typeof(data_received) == TYPE_ARRAY:
			print(data_received) # Prints array
		else:
			print("Unexpected data")
	else:
		print("JSON Parse Error: ", json.get_error_message(), " in ", json_string, " at line ", json.get_error_line())


func add_button(upgrade):
	var button = Button.new()
	button.text = upgrade["name"]
	button
	add_child(button)
