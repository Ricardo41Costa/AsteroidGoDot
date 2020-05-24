extends Area2D

export var speed = 100
export var rotationSpeed = 45.0
export var nextSpawnNumber = 2
export (PackedScene) var nextComet

var screenSize
var randomDiretionX
var randomDiretionY
var isDying

# Called when the node enters the scene tree for the first time.
func _ready():
	
	screenSize = get_viewport_rect().size
	
	isDying = false
	
	randomDiretionX = rand_range(-1, 1)
	randomDiretionY = rand_range(-1, 1)

func _process(delta):
	
	SceneMove(delta)
	BorderPositionReset()

func SceneMove(delta):
	
	rotation_degrees += rotationSpeed * delta
	
	position.x += randomDiretionX * speed * delta
	position.y += randomDiretionY * speed * delta

# To controll the limit of the screen by changing the player position
func BorderPositionReset():
	
	var borderOffsetMax = 20
	var borderOffsetMin = 0
	
	if position.y < -borderOffsetMax:
		position = Vector2(position.x, screenSize.y)
	
	if position.y > (screenSize.y + borderOffsetMin):
		position = Vector2(position.x, borderOffsetMin)
	
	if position.x < -borderOffsetMax:
		position = Vector2(screenSize.x, position.y)
	
	if position.x > (screenSize.x + borderOffsetMax):
		position = Vector2(borderOffsetMin, position.y)

func _die():
	queue_free()

func _spawn_Next_Wave_Comet():
	
	for x in nextSpawnNumber:
		
		var comet = nextComet.instance()
		get_tree().get_root().get_node("Main").add_child(comet)
		
		comet.global_position = position
	
	_die()

func _on_Comet_body_entered(body):
	
	print(body.name)
	print(body.filename)
	
	if !isDying:
		if body.filename.find("Bullet") != -1:
			isDying = true
			_spawn_Next_Wave_Comet()
			body._die()
			
		elif body.filename.find("SpaceShip") != -1:
			
			if body.isVulnerable:
				body._hit()
