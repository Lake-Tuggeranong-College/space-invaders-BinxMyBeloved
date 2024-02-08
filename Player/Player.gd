extends KinematicBody2D
var bulletSource = preload ("res://Bullet/Bullet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	pass # replace with function body


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("fire"):
		var bulletInstance = bulletSource.instance()
		bulletInstance.position = Vector2(position.x, position.y-45)
		get_tree().get_root().add_child(bulletInstance)
