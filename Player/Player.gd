extends KinematicBody2D
var bulletSource = preload ("res://Bullet/Bullet.tscn")
var movement_speed = 240
export (int) var health = 5
# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	set_physics_process(true)
	pass # replace with function body

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if GlobalVariables.scoringInformation["totalScore"] >= 3:
		movement_speed = 300
	if GlobalVariables.scoringInformation["totalScore"] <= 3:
		# This was causing the players health to drop extremely quickly.
		#reduceHealth()
		pass
	if Input.is_action_just_pressed("fire"):
		if GlobalVariables.bulletInstanceCount < 3:
			var bulletInstance = bulletSource.instance()
			bulletInstance.position = Vector2(position.x, position.y-25)
			get_tree().get_root().add_child(bulletInstance)

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		if position.x >10:
			move_and_collide(Vector2(-movement_speed * delta, 0))
	if Input.is_action_pressed("ui_right"):
		if position.x < 1250:
			move_and_collide(Vector2(movement_speed * delta, 0))
	if Input. is_action_pressed("ui_up"):
		if position.y > 10:
			move_and_collide(Vector2(0, -movement_speed * delta))
	if Input. is_action_pressed("ui_down"):
		if position.y < 640:
			move_and_collide(Vector2(0, movement_speed * delta))

func reduceHealth():
	health -= 1
	if health == 0:
		get_tree().change_scene("res://LoseScreen/LoseScreen.tscn")
