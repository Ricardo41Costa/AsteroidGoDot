extends RigidBody2D

export var speed = 300 #bullet speed
var screen_size # screen size

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport().size # get screen size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var velocity
	
	velocity = Vector2(0,-1).rotated(rotation) * speed * delta
	position = velocity
	
