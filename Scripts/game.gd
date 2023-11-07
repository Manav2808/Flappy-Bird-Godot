extends Node2D

@export var PipeGreen: PackedScene
@export var PipeRed: PackedScene

@export var BlueBird: PackedScene
@export var YellowBird: PackedScene
@export var RedBird: PackedScene

func _ready():
	var bird = null
	var pipe = null
	var pipe2 = null
	
	if Global.Background == "Day":
		$Background.texture = Global.bg_day
		$Background.scale = Vector2(1.4, 1.4)
	else:
		$Background.texture = Global.bg_night
		$Background.scale = Vector2(1.4, 1.4)

	if Global.Pipe == "Green":
		pipe = PipeGreen.instantiate()
		pipe2 = PipeGreen.instantiate()
	else:
		pipe = PipeRed.instantiate()
		pipe2 = PipeRed.instantiate()
	
	if Global.Bird == "Blue":
		bird = BlueBird.instantiate()
	elif Global.Bird == "Yellow":
		bird = YellowBird.instantiate()
	else:
		bird = RedBird.instantiate()
	
	add_child(bird)
	add_child(pipe)
	add_child(pipe2)
	
	if Global.mode == "Inverse Classic":
		bird.global_position = Vector2(255, 311)
		$Bird/AnimatedSprite2D.flip_h = true
		pipe.global_position = Vector2(-539, -45)
		pipe2.global_position = Vector2(-800, -32)
	else:
		bird.global_position = Vector2(145, 311)
		pipe.global_position = Vector2(295, -45)
		pipe2.global_position = Vector2(556, -32)
