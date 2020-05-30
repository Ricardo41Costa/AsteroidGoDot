extends MarginContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):


func _on_Texture_Start_pressed():
	print("start")
	
	get_tree().change_scene("res://Scenes/Main.tscn")


func _on_Texture_instruc_pressed():
	print("instructions")


func _on_Texture_Quit_pressed():
	print("quit")
	
	get_tree().quit()
