extends Control

export(int) var CountdownMax2 = 60
var currentTimer2

# Called when the node enters the scene tree for the first time.
func _ready():
	currentTimer2 = CountdownMax2
	$HUD/Countdown.text = str(currentTimer2)
	while currentTimer2 > -2:
		yield(get_tree().create_timer(1.0), "timeout")
		$HUD/Countdown.text = str(currentTimer2)
		currentTimer2 = currentTimer2 - 1
		print(currentTimer2)
	print("Game Over")
	get_tree().change_scene("res://LoseScreen/LoseScreen.tscn")

func _process(delta):
	$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore2"])
	if "3200" in str(GlobalVariables.scoringInformation["currentScore2"]) : 
		print("Level End")
		get_tree().change_scene("res://WinScreen/WinScreen.tscn")
	if Input.is_action_pressed("ui_cancel"):
		GlobalVariables.scoringInformation["currentScore2"] = 0
		get_tree().change_scene("res://Map/Map.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

