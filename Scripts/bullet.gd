extends RigidBody2D

export var speed = 500 #bullet speed

# Called when the node enters the scene tree for the first time.
func _ready():
	
	var velocity
	
	velocity = Vector2(0,-1).rotated(global_rotation) * speed 
	
	apply_central_impulse(velocity)

func _die():
	queue_free()

func _on_Visibility_screen_exited():
	queue_free()
