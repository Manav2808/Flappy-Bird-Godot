extends Node2D

@export var PipeGreen: PackedScene
@export var PipeRed: PackedScene

@export var BlueBird: PackedScene
@export var YellowBird: PackedScene
@export var RedBird: PackedScene

var pipe = null

var randNumGenr = RandomNumberGenerator.new()

func _ready():
	var bird = null

	if Global.Background == "Day":
		$Background.texture = Global.bg_day
		$Background.scale = Vector2(1.4, 1.4)
	else:
		$Background.texture = Global.bg_night
		$Background.scale = Vector2(1.4, 1.4)
	
	if Global.Bird == "Blue":
		bird = BlueBird.instantiate()
	elif Global.Bird == "Yellow":
		bird = YellowBird.instantiate()
	else:
		bird = RedBird.instantiate()
	
	add_child(bird)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_debris_pipe_generation_timer_timeout():
	if Global.Pipe == "Green":
		pipe = PipeGreen.instantiate()
	else:
		pipe = PipeRed.instantiate()
	
	add_child(pipe)
	
	var pipePos = randNumGenr.randi_range(1, 4)
	
	if pipePos%2 == 0:
		pipe.global_position = Vector2(600, 540)
		pipe.rotation_degrees = randNumGenr.randi_range(-60, 60)
	else:
		pipe.global_position = Vector2(600, 66)
		pipe.rotation_degrees = randNumGenr.randi_range(-120, -240)

func _on_score_counter_timeout():
	Global.score += 1
