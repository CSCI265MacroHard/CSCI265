extends Button

func _process(delta):
	if Global.tokens < 1:
		disabled = true
		$TextureRect.show_behind_parent = true
	else:
		disabled = false
		$TextureRect.show_behind_parent = false

func _pressed():
	if (Global.tokens >= 1):
		Global.tokens -= 1
		Global.tickets += 500
		pass
