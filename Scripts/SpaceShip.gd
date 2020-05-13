extends Area2D

export var speed = 350 #player speed
var animationState : AnimationNodeStateMachinePlayback #callback to the animation state machine
var screen_size  # Size of the game window.

# Called when the node enters the scene tree for the first time.
func _ready():
	animationState = $AnimationTree.get("parameters/playback")
	animationState.start("Idle")
	screen_size = get_viewport_rect().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var velocity = Vector2()
	
	if Input.is_action_pressed("ui_up"):
		
	
