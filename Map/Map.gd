extends Node


func _ready():
	pass 

func _on_MaptoMenu_button_down():
	get_tree().change_scene("res://Menu/Menu.tscn")

func _on_Lv2Direct_button_up():
	if GlobalVariables.scoringInformation["totalScore"] <= 0:
		GlobalVariables.scoringInformation["stupid"] += 1
		if GlobalVariables.scoringInformation["stupid"] ==5:
			get_tree().quit()
		if GlobalVariables.scoringInformation["stupid"] == 4:
			get_tree().change_scene("res://Map/Kurt.tscn")
		else:
			get_tree().change_scene("res://Map/check.tscn")
	else:
		get_tree().change_scene("res://Lv2/Lv2.tscn")

func _on_Lv3Direct_button_up():
	if GlobalVariables.scoringInformation["totalScore"] <= 0:
		GlobalVariables.scoringInformation["stupid"] += 1
		if GlobalVariables.scoringInformation["stupid"] ==5:
				get_tree().quit()
		if GlobalVariables.scoringInformation["stupid"] == 4:
			get_tree().change_scene("res://Map/Kurt.tscn")
		else:
			get_tree().change_scene("res://Map/check.tscn")
	else:
		get_tree().change_scene("res://Lv3/Lv3.tscn")

func _on_Lv4Direct_button_up():
	if GlobalVariables.scoringInformation["totalScore"] <= 0:
		GlobalVariables.scoringInformation["stupid"] += 1
		if GlobalVariables.scoringInformation["stupid"] ==5:
			get_tree().quit()
		if GlobalVariables.scoringInformation["stupid"] == 4:
			get_tree().change_scene("res://Map/Kurt.tscn")
		else:
			get_tree().change_scene("res://Map/check.tscn")
	else:
		get_tree().change_scene("res://Lv4/Lv4.tscn")

func _on_Lv5Direct_button_up():
	if GlobalVariables.scoringInformation["totalScore"] <= 0:
		GlobalVariables.scoringInformation["stupid"] += 1
		if GlobalVariables.scoringInformation["stupid"] ==5:
			get_tree().quit()
		if GlobalVariables.scoringInformation["stupid"] == 4:
			get_tree().change_scene("res://Map/Kurt.tscn")
		else:
			get_tree().change_scene("res://Map/check.tscn")
	else:
		get_tree().change_scene("res://Lv5/Lv5.tscn")

	if Input.is_action_pressed("ui_cancel"):
		get_tree().change_scene("res://Menu/Menu.tscn")
