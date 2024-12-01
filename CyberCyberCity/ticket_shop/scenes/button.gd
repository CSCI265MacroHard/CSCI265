extends Button

var upgrade_name
var game_name
var arg
var cost = 100
var purchased = false
var refundable = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _pressed():
	if (purchased == false) && (Global.tickets >= cost):
		purchased = true
		$bought.visible = true
		Global.tickets -= cost
		Global.upgrades_bought[game_name][upgrade_name] = arg
	elif (purchased == true) && (refundable == true):
		purchased = false
		$bought.visible = false
		Global.tickets += cost
		Global.upgrades_bought[game_name].erase(upgrade_name)
	else:
		pass
		
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func add_pip(num):
	if num == 2:
		$PipTexture.texture = load("res://ticket_shop/assets/upgrade_down.png")
	elif num == 1:
		$PipTexture.texture = load("res://ticket_shop/assets/upgrade_up.png")
	else:
		$PipTexture.texture = load("res://ticket_shop/assets/upgrade_star.png")
