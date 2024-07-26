extends CharacterBody2D

var speed = 200
var gravity = 100
var flyvelocity = 100
var score = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	GameManager.Player = self

func get_input(): 
		if Input.is_action_pressed("ui_spacebar"):
			velocity.y=-flyvelocity

func _physics_process(_delta):
		score = score + 1
		GameManager.score.text = str (score)
		velocity.x=speed
		velocity.y=gravity
		get_input()
		move_and_slide()
# Called every frame. 'delta' is the elapsed time since the previous frame.
