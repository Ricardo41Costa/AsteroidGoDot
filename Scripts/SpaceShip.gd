extends KinematicBody2D

export var speed = 250 #player speed
export (PackedScene) var bulletScene

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
	
	MovementController(delta)
	BorderController()
	CannonController()

func CannonController():
	
	if Input.is_action_just_pressed("ui_accept"):
		
		var leftBullet = bulletScene.instance()
		leftBullet.global_position = $LeftCannonPosition.global_position
		add_child(leftBullet)
		
		var rightBullet = bulletScene.instance()
		rightBullet.global_position = $RightCannonPosition.global_position
		add_child(rightBullet)

# To Control the players input and move the space ship accordingly.
func MovementController(delta):
	
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

# To controll the limit of the screen by changing the player position
func BorderController():
	
	if position.y < -10:
		position = Vector2(position.x, screen_size.y)
	
	if position.y > (screen_size.y + 10):
		position = Vector2(position.x, 0)
	
	if position.x < -10:
		position = Vector2(screen_size.x, position.y)
	
	if position.x > (screen_size.x + 10):
		position = Vector2(0, position.y)
