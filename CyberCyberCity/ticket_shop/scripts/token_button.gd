extends Button
	
	
func _process(delta):
	if Global.tickets < 1000:
		disabled = true
		$TextureRect.show_behind_parent = true
	else:
		disabled = false
		$TextureRect.show_behind_parent = false
	
func _pressed():
	if (Global.tickets >= 1000):
		Global.tickets -= 1000
		Global.tokens += 1
		pass
