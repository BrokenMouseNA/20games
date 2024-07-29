extends Node2D
@onready var audio = $Area2D/AudioStreamPlayer2D

signal death
# Called when the node enters the scene tree for the first time.
func _ready():
	Main.pipe = self

func _on_area_2d_body_entered(_body):
	#audio.play()
	death.emit()
	queue_free()
	#await get_tree().create_timer(1.5).timeout
	#gos.visible = true
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
