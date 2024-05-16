extends Node
var bulletInstanceCount = 0 # Keeps track of how many bullet instances are current
var OppBulletInstanceCount = 0
var Player
#var saveFile = "user://save.dat"

var scoringInformation = {
	"currentScore": 0,
	"currentScore2": 0,
	"currentScore3": 0,
	"totalScore": 0,
	"stupid": 0,
	"currentPlayer": "User",
	"highScore": [0,0,0],
	"highScorePlayersName" : "Winner"
}

func update_variables():
	var playerNode = get_tree().current_scene.get_node("Player")
	var healthNode = get_tree().current_scene.get_node("Health")
	var scoreNode = get_tree().current_scene.get_node("HUD/CurrentScore")
	healthNode.update_health(playerNode.health)
	scoreNode.text = str(scoringInformation["currentScore"])
