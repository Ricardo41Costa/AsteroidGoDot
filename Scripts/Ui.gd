extends Control

var extraLivesArray

# Called when the node enters the scene tree for the first time.
func _ready():
	
	var extraLiveTexture1 = $ExtraLiveTexture1
	var extraLiveTexture2 = $ExtraLiveTexture2
	var extraLiveTexture3 = $ExtraLiveTexture3
	
	extraLivesArray = [extraLiveTexture1, extraLiveTexture2, extraLiveTexture3]

func _set_Level_Label_Text(level):
	
	$LevelLabel.text = "Level " + String(level)

func _change_next_level_msg(level):
	
	$CenterContainer/MsgLabel.text = "Level " + String(level)

func _change_pause_msg():
	
	$CenterContainer/MsgLabel.text = "PAUSE"

func _set_Reduce_Live_Counter(currentLives):
	
	var extraLiveTexture = extraLivesArray[currentLives]
	extraLiveTexture.queue_free()

func _turn_next_level_msg_visible(visible):
	
	$CenterContainer/MsgLabel.visible = visible

func _turn_pause_texture_visible(visible):
	
	$CenterContainer/PauseTexture.visible = visible
