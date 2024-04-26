extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_MaptoMenu_button_down():
	get_tree().change_scene("res://Menu/Menu.tscn")

func _on_Lv2Direct_button_up():
	get_tree().change_scene("res://Lv2/Lv2.tscn")
	var file = File.new()

func _on_Lv3Direct_button_up():
	get_tree().change_scene("res://Lv3/Lv3.tscn")
	var file = File.new()

	if Input.is_action_pressed("ui_cancel"):
		get_tree().change_scene("res://Menu/Menu.tscn")
