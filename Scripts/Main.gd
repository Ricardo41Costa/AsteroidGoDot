extends Node

export (PackedScene) var cometScene
var level
var numberLives
var screenSize

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	screenSize = get_viewport().size
	SpawnComet()

func SpawnComet():
	
	var numberComets = 2
	
	for x in numberComets:
		
		var randPosition = Vector2(rand_range(0, screenSize.x), rand_range(0, screenSize.y))
		var randRotation = rand_range(1, 360)
		
		var comet = cometScene.instance()
		add_child(comet)
		
		comet.global_position = randPosition

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
