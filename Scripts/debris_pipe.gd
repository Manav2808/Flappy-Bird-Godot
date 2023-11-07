extends Node2D

func _ready():
	pass # Replace with function body.

func _process(delta):
	position.x -= Global.obstacles_speed * delta

	if position.x <= -200:
		queue_free()
