extends Node

export (PackedScene) var cometScene
var level
var numberLives
var screenSize
var nextLevelTimer
var running

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	screenSize = get_viewport().size
	level = 0
	StartTimer()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	checkNumberOfComets()

func PauseController():
	
	if Input.is_action_pressed("ui_pause"):
		
		pass

func checkNumberOfComets():
	
	var cometCount = get_tree().get_nodes_in_group("Comet").size();
	
	if (cometCount == 0 && running):
		
		StartTimer()

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
	
	get_tree().change_scene("res://Scenes/Game_Over.tscn")

func SpawnComet(numberComets):
	
	for x in numberComets:
		
		$CometPath/CometSpawnLocation.offset = randi()
		
		var comet = cometScene.instance()
		add_child(comet)
		
		comet.position = $CometPath/CometSpawnLocation.position

func StartTimer():
	
	running = false
	
	var nextLevel = level + 1
	
	$CanvasLayer/UI._change_next_level_msg(nextLevel)
	$CanvasLayer/UI._turn_next_level_msg_visible(true)
	
	nextLevelTimer = Timer.new()
	nextLevelTimer.connect("timeout", self, "_on_NextLevelTimer_timeout") 
	add_child(nextLevelTimer)
	nextLevelTimer.start()

func _on_NextLevelTimer_timeout():
	print("help me jesus")
	
	running = true
	
	nextLevelTimer.stop()
	call_deferred("queue_free", nextLevelTimer)
	
	$CanvasLayer/UI._turn_next_level_msg_visible(false)
	NextLevel()
