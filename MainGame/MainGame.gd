extends Control

export(int) var CountdownMax = 90
var currentTimer

# Called when the node enters the scene tree for the first time.
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
	# The name of the node ($Health) was incorrect
	$Health.update_health($Player.health)
	$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
	if "3200" in str(GlobalVariables.scoringInformation["currentScore"]) : 
		#if get_tree().get_nodes_in_group("Enemy").size() == 0:
		#^ takes off enemy bullet limit, trying to set to remaining enemies doesnt work (?) leave as score?
		print("Level End")
		GlobalVariables.bulletInstanceCount = 0
		GlobalVariables.OppBulletInstanceCount = 0
		GlobalVariables.scoringInformation["currentScore"] = 0
		GlobalVariables.scoringInformation["totalScore"] +=1
		print(GlobalVariables.scoringInformation["totalScore"])
		get_tree().change_scene("res://WinScreen/WinScreen.tscn")
	if Input.is_action_pressed("ui_cancel"):
		GlobalVariables.scoringInformation["currentScore"] = 0
		get_tree().change_scene("res://Menu/Menu.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#if get_tree().get_nodes_in_group("enemy").size()==0:
#	get_tree().change_scene("res://WinScreen/WinScreen.tscn")
