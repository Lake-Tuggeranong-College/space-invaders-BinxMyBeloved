extends KinematicBody2D

var speed = 300

# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalVariables.bulletInstanceCount += 1
	set_physics_process(true)

func _physics_process(delta):
	var collidedObject = move_and_collide(Vector2(0, -speed*delta))
	if (collidedObject):
		#print(collidedObject.collider.name)
		if "Bullet" in collidedObject.collider.name:
			collidedObject.get_collider().queue_free()
		else:
			collidedObject.get_collider().queue_free()
			GlobalVariables.scoringInformation["currentScore"] +=50
		queue_free()
		GlobalVariables.bulletInstanceCount -= 1
