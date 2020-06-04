extends MarginContainer

func _on_RetryButton_pressed():
	print("start")
	
	get_tree().change_scene("res://Scenes/Main.tscn")

func _on_QuitButton_pressed():
	print("quit")
	
	get_tree().quit()
