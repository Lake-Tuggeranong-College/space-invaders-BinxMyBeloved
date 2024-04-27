extends Node
var bulletInstanceCount = 0 # Keeps track of how many bullet instances are current
var OppBulletInstanceCount = 0

#var saveFile = "user://save.dat"

var scoringInformation = {
	"currentScore": 0,
	"currentScore2": 0,
	"currentScore3": 0,
	"currentPlayer": "User",
	"highScore": [0,0,0],
	"highScorePlayersName" : "Winner"
}
