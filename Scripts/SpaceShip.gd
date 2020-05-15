extends KinematicBody2D

export var speed = 250 #player speed
export (PackedScene) var bullet

var animationState : AnimationNodeStateMachinePlayback #callback to the animation state machine
var screen_size  # Size of the game window.

# Called when the node enters the scene tree for the first time.
func _ready():
	animationState = $AnimationTree.get("parameters/playback")
	animationState.start("Idle")
	screen_size = get_viewport_rect().size
	position = Vector2(screen_size.x / 2, screen_size.y / 2)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	var velocity = Vector2()
	
	if Input.is_action_pressed("ui_up"):
		
		if animationState.get_current_node() != "SpeedStable":
			animationState.travel("SpeedStable")
		
		velocity = Vector2(0,-1).rotated(rotation) * speed * delta
		
		if Input.is_action_pressed("ui_left"):
			rotation_degrees -= speed * delta
	
		if Input.is_action_pressed("ui_right"):
			rotation_degrees += speed * delta
	else:
		if animationState.get_current_node() == "SpeedStable":
			animationState.travel("Idle")
	
	move_and_collide(velocity)
	
	if position.y < -10:
		position = Vector2(position.x, screen_size.y)
	
	if position.y > (screen_size.y + 10):
		position = Vector2(position.x, 0)
	
	if position.x < -10:
		position = Vector2(screen_size.x, position.y)
	
	if position.x > (screen_size.x + 10):
		position = Vector2(0, position.y)
	
