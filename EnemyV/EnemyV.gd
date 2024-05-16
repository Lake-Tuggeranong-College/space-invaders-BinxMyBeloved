extends KinematicBody2D

var bullet = preload("res://Bullet-OppV/Bullet-OppV.tscn")

func _ready():
	$Area2D.connect("area_entered", self, "colliding")

func _process(delta):
#	while(true):
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var my_random_number = rng.randf_range(2.0, 30.0)
	yield(get_tree().create_timer(my_random_number), "timeout")
	if GlobalVariables.OppBulletInstanceCount < 5:
		var bulletInstance = bullet.instance()
		
		bulletInstance.position = Vector2(global_position.x, global_position.y+20)
		get_tree().get_root().add_child(bulletInstance)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
