extends Node
var bulletInstanceCount = 0 # Keeps track of how many bullet instances are current
var enemyBulletInstanceCount = 0

var saveFile = "user://save.dat"

var scoringInformation = {
	"currentScore": 0,
	"currentPlayer": "User",
	"highScore": [0,0,0],
	"highScorePlayersName" : "Winner"
}
