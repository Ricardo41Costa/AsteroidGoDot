extends Node

export (PackedScene) var cometScene
var level
var numberLives
var screenSize

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	screenSize = get_viewport().size
	level = 0
	NextLevel()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	checkNumberOfComets()

func checkNumberOfComets():
	
	var cometCount = get_tree().get_nodes_in_group("Comet").size();
	
	if (cometCount == 0):
		
		NextLevel()

func NextLevel():
	
	var numberComets = 0
	
	level += 1
	
	if level < 5:
		numberComets = level
	else:
		numberComets = 5
	
	SpawnComet(numberComets)
	$CanvasLayer/UI._set_Level_Label_Text(level)

func PlayerDeath():
	
	get_tree().change_scene("res://Scenes/Main_Menu.tscn")

func SpawnComet(numberComets):
	
	for x in numberComets:
		
		$CometPath/CometSpawnLocation.offset = randi()
		
		var comet = cometScene.instance()
		add_child(comet)
		
		comet.position = $CometPath/CometSpawnLocation.position
