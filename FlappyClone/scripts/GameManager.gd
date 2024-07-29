extends Node
var score
var player
@onready var pipe = $pipe


func _ready():
	#pass
	#player = get_tree().get_first_node_in_group("Player")
	#pipe = get_node("pipe")
	pipe.death.connect(_on_player_killed)
	
func _on_player_killed():
		queue_free()
		#audio.play()
		#gos.set_score(score)
		#await get_tree().create_timer(1.5).timeout
		#gos.visible = true
