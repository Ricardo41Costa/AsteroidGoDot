extends RigidBody2D

var speed = 200
var screenSize

# Called when the node enters the scene tree for the first time.
func _ready():
	
	screenSize = get_viewport_rect().size
	position = Vector2(screenSize.x / 2, screenSize.y / 2)
	
	var velocity
	
	velocity = Vector2(0,-1).rotated(global_rotation) * speed 
	
	apply_central_impulse(velocity)


func _process(delta):
	
	BorderController()

# To controll the limit of the screen by changing the player position
func BorderController():
	
	if position.y < -50:
		position = Vector2(position.x, screenSize.y)
	
	if position.y > (screenSize.y + 0):
		position = Vector2(position.x, 0)
	
	if position.x < -50:
		position = Vector2(screenSize.x, position.y)
	
	if position.x > (screenSize.x + 50):
		position = Vector2(0, position.y)


func _on_body_entered(body):
	
	if body.name == "SpaceShip":
		body.Die()
	elif body.name == "Bullet":
		queue_free()

