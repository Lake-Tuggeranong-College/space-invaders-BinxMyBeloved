extends Control

export(int) var CountdownMax = 50
var currentTimer

func _ready():
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
	if "456456456" in str(GlobalVariables.scoringInformation["currentScore"]) : 
		GlobalVariables.bulletInstanceCount = 0
		GlobalVariables.OppBulletInstanceCount = 0
		GlobalVariables.scoringInformation["currentScore"] = 0
		GlobalVariables.scoringInformation["totalScore"] +=1
		get_tree().change_scene("res://WinScreen/WinScreen.tscn")
	if Input.is_action_pressed("ui_cancel"):
		GlobalVariables.scoringInformation["currentScore"] = 0
		get_tree().change_scene("res://Map/Map.tscn")

