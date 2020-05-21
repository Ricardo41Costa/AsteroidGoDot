extends Node

export (PackedScene) var cometScene
var level
var numberLives

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	SpawnComet()

func SpawnComet():
	
	var numberComets = 2
	
	for x in numberComets:
		
		$CometPath/CometPathLocation.offset = randi()
		
		var comet = cometScene.instance()
		add_child(comet)
		
		var diretion = $CometPath/CometPathLocation.rotation + PI / 2
		
		comet.position = $CometPath/CometPathLocation.position
		
		var initialRotation = rand_range(1, 360)
		comet.rotation = initialRotation


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
