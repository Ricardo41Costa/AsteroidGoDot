extends AudioStreamPlayer2D

var laserSFX = preload("res://Sounds/laser_shot.tres")

func _play_laser_sfx():
	
	stream = laserSFX
	play()
