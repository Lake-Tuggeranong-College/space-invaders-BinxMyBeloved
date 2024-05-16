extends Control

export(int) var CountdownMax2 = 60
var currentTimer2

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
	$Health.update_health($Player.health)
	$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
	if "1800" in str(GlobalVariables.scoringInformation["currentScore"]) : 
		GlobalVariables.bulletInstanceCount = 0
		GlobalVariables.OppBulletInstanceCount = 0
		GlobalVariables.scoringInformation["currentScore"] = 0
		GlobalVariables.scoringInformation["totalScore"] +=1
		get_tree().change_scene("res://WinScreen/WinScreen.tscn")
	if Input.is_action_pressed("ui_cancel"):
		GlobalVariables.scoringInformation["currentScore"] = 0
		get_tree().change_scene("res://Map/Map.tscn")

