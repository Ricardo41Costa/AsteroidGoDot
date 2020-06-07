extends AudioStreamPlayer2D

var backgroundMusic = preload("res://Sounds/Background_Music.tres")

func _play_background_music():
	
	stream = backgroundMusic
	play()
