extends MarginContainer

func _on_Texture_Start_pressed():
	print("start")
	
	get_tree().change_scene("res://Scenes/Main.tscn")


func _on_Texture_instruc_pressed():
	print("instructions")


func _on_Texture_Quit_pressed():
	print("quit")
	
	get_tree().quit()
