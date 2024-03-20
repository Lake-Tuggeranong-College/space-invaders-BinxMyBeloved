extends Control

export(int) var CountdownMax = 90
var currentTimer

# Called when the node enters the scene tree for the first time.
func _ready():
	currentTimer = CountdownMax
	$HUD/Countdown.text = str(currentTimer)
	while currentTimer > 0:
		yield(get_tree().create_timer(1.0), "timeout")
		$HUD/Countdown.text = str(currentTimer)
		currentTimer = currentTimer - 1
		print(currentTimer)
	print("Game Over")
	get_tree().change_scene("res://LoseScreen/LoseScreen.tscn")

func _process(delta):
	$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
	if "1600" in str(GlobalVariables.scoringInformation["currentScore"]) : 
		print("Level End")
		get_tree().change_scene("res://WinScreen/WinScreen.tscn")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

