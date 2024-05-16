extends Control

export(int) var CountdownMax = 90
var currentTimer

func _ready():
	GlobalVariables.Player = self
	currentTimer = CountdownMax
	$HUD/Countdown.text = str(currentTimer)
	while currentTimer > -2:
		yield(get_tree().create_timer(1.0), "timeout")
		$HUD/Countdown.text = str(currentTimer)
		currentTimer = currentTimer - 1
		print(currentTimer)
	print("Game Over")
	get_tree().change_scene("res://LoseScreen/LoseScreen.tscn")

func _process(delta):
	if GlobalVariables.Player:
		GlobalVariables.update_variables()
	if "3200" in str(GlobalVariables.scoringInformation["currentScore"]) : 
		GlobalVariables.bulletInstanceCount = 0
		GlobalVariables.OppBulletInstanceCount = 0
		GlobalVariables.scoringInformation["currentScore"] = 0
		GlobalVariables.scoringInformation["totalScore"] +=1
		get_tree().change_scene("res://WinScreen/WinScreen.tscn")

	if Input.is_action_pressed("ui_cancel"):
		GlobalVariables.scoringInformation["currentScore"] = 0
		get_tree().change_scene("res://Menu/Menu.tscn")

