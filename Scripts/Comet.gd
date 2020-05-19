extends Area2D

var speed = 100
var rotationSpeed = 45.0
var screenSize

const borderOffset = 20

# Called when the node enters the scene tree for the first time.
func _ready():
	
	randomize()
	
	screenSize = get_viewport_rect().size
	#position = Vector2(screenSize.x / 2, screenSize.y / 2)
	
	var initialRotation = rand_range(1, 360)
	rotate(initialRotation)

func _process(delta):
	
	rotation_degrees += rotationSpeed * delta
	
	position.x += speed * delta
	
	BorderController()

# To controll the limit of the screen by changing the player position
func BorderController():
	
	if position.y < -borderOffset:
		position = Vector2(position.x, screenSize.y)
	
	if position.y > (screenSize.y + 0):
		position = Vector2(position.x, 0)
	
	if position.x < -borderOffset:
		position = Vector2(screenSize.x, position.y)
	
	if position.x > (screenSize.x + borderOffset):
		position = Vector2(0, position.y)
