extends Button


func _on_Quit_pressed():
	GlobalVariables.scoringInformation["totalScore"] = 0
	get_tree().quit()
