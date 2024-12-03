extends StaticBody3D


func interact():
	if $Music.playing == true:
		$Music.stop()
	else:
		$Music.play()
	
