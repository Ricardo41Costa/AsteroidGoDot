extends KinematicBody2D

export var speed = 200 #player speed
export (PackedScene) var bulletScene
export(NodePath) var parent_path

var timerVulnerable
var isVulnerable
var extraLives = 3
var timeToWaitShot = 0
var timeToWaitVulnerable = 0
var animationState : AnimationNodeStateMachinePlayback #callback to the animation state machine
var screenSize  # Size of the game window.

# Called when the node enters the scene tree for the first time.
func _ready():
	animationState = $AnimationTree.get("parameters/playback")
	animationState.start("Idle")
	screenSize = get_viewport_rect().size
	position = Vector2(screenSize.x / 2, screenSize.y / 2)
	isVulnerable = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	MovementController(delta)
	BorderController()
	CannonController()
	VulnerableController()

func CannonController():
	
	var currentTime = OS.get_ticks_msec()
	
	if Input.is_action_just_pressed("ui_accept" ) && currentTime >= timeToWaitShot:
		
		timeToWaitShot = currentTime + 400
		
		var leftBullet = bulletScene.instance()
		leftBullet.global_position = $LeftCannonPosition.global_position
		leftBullet.rotation = rotation
		get_node(parent_path).add_child(leftBullet)
		
		var rightBullet = bulletScene.instance()
		rightBullet.global_position = $RightCannonPosition.global_position
		rightBullet.rotation = rotation
		get_node(parent_path).add_child(rightBullet)

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
	
	var borderOffsetMax = 10
	var borderOffsetMin = 0
	
	if position.y < -borderOffsetMax:
		position = Vector2(position.x, screenSize.y)
	
	if position.y > (screenSize.y + borderOffsetMax):
		position = Vector2(position.x, borderOffsetMin)
	
	if position.x < -borderOffsetMax:
		position = Vector2(screenSize.x, position.y)
	
	if position.x > (screenSize.x + borderOffsetMax):
		position = Vector2(borderOffsetMin, position.y)

func VulnerableController():
	
	if !isVulnerable:
		
		var currentTime = OS.get_ticks_msec()
		
		if currentTime >= timeToWaitVulnerable:
			
			timeToWaitVulnerable = currentTime + 100
			
			if is_visible_in_tree():
				visible = false
			else:
				visible = true

func startVulnerableTimer():
	
	timerVulnerable = Timer.new()
	timerVulnerable.set_one_shot(false)
	timerVulnerable.set_wait_time(1)
	timerVulnerable.connect("timeout",self,"_timer_callback") 
	add_child(timerVulnerable)	
	timerVulnerable.start()
	
	print("timer started")

func _hit():
	
	if extraLives > 0:
		extraLives -= 1
		isVulnerable = false
		startVulnerableTimer()
		emit_signal("hit_signal")
	else:
		_die()

func _die():
	queue_free()

func _timer_callback():
	isVulnerable = true
	timerVulnerable.stop()
	
	print("timer ended")
