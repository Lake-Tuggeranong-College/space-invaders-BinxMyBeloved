extends Control

export(int) var CountdownMax
var currentTimer

# Called when the node enters the scene tree for the first time.
func _ready():
	currentTimer = CountdownMax
	$HUD/Countdown.text = str(currentTimer)
	
	while currentTimer > 0:
		yield(get_tree().create_timer(1.0), "timeout")
		currentTimer = currentTimer - 1
		print(currentTimer)
	print("Game Over")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
