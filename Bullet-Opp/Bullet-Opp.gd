extends KinematicBody2D

var speed = 300

# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalVariables.OppBulletInstanceCount += 1
	set_physics_process(true)

func _physics_process(delta):
	var collidedObject = move_and_collide(Vector2(0, +speed*delta))
	if (collidedObject):
		#print(collidedObject.collider.name)
		if "Enemy" in collidedObject.collider.name:
			pass
		elif "Player" in collidedObject.collider.name:
			#$Player.reduceHealth()
			collidedObject.collider.reduceHealth()
			queue_free()
		else:
			queue_free()
			GlobalVariables.OppBulletInstanceCount -= 1
			print("Opp Bullets: ", GlobalVariables.OppBulletInstanceCount)
		
