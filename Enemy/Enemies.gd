extends Node2D

var speed = 18

func _ready():
	set_physics_process(true)

func _physics_process(delta):
	global_position.y += speed * delta
	pass
	#move_and_collide(Vector2(speed * delta, 0))


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
