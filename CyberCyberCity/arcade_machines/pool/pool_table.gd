extends StaticBody3D

@export_category("Interactable")

@export_dir var game_scene_directory: String

#@onready var shaderA = preload("res://assets/shaders/outline.gdshader")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func hover():
	print("hovering")
	
func interact():
	get_tree().change_scene_to_file("res://arcade_games/pool/scenes/main.tscn")
