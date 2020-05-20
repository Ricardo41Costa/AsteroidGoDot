extends Area2D

var speed = 100
var rotationSpeed = 45.0
var screenSize

# Called when the node enters the scene tree for the first time.
func _ready():
	
	screenSize = get_viewport_rect().size
	
	#var initialRotation = rand_range(1, 360)
	#rotate(initialRotation)

func _process(delta):
	
	SceneMove(delta)
	BorderPositionReset()

func SceneMove(delta):
	
	rotation_degrees += rotationSpeed * delta
	position.x += speed * delta

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

func _on_Comet_body_entered(body):
	
	print(body.name)
	print(body.filename)
	
	if body.filename.find("Bullet") != -1:
		
		queue_free()
	elif body.filename.find("SpaceShip") != -1:
		
		body.Die()
