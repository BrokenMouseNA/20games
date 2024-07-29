extends Label

var score

@onready var gos = $UILayer/GameOverScreen
#
# Called when the node enters the scene tree for the first time.
func _ready():
	Main.score = self

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_restart_pressed():
	get_tree().reload_current_scene()

func set_score(value):
	$Panel/Score.text = "Score: " + score
	
func set_high_score(value):
	$"Panel/High Score".text = "Hi-Score: " + str(value)
