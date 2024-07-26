extends Label
var score

# Called when the node enters the scene tree for the first time.
func _ready():
	GameManager.score = self
